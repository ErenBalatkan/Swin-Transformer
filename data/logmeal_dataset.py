import cv2
import numpy as np
import os
import torch
from torch.utils.data import Dataset, DataLoader
import albumentations as A
from PIL import Image
from data.cached_image_folder import pil_loader


def read_single_column_txt(path):
    items = []
    with open(path, "r") as f:
        for line in f.readlines():
            line = line.strip()
            if line != "":
                items += [line]
    return items


class LogMealTypesDataset(Dataset):
    def __init__(self, dataset_path, annotation_relative_path="annotations/split_types", mode="train", transforms=None):
        self.dataset_path = dataset_path
        print(dataset_path)
        self.annotation_path = os.path.join(dataset_path, annotation_relative_path)
        print("ann", self.annotation_path)
        self.mode = mode
        self.transforms = transforms

        classes = read_single_column_txt(os.path.join(self.annotation_path, "classes.txt"))
        print(classes)
        self.num_classes = len(classes)

        self.img_paths = read_single_column_txt(os.path.join(self.annotation_path, f"{mode}_imgs.txt"))
        self.img_labels = read_single_column_txt(os.path.join(self.annotation_path, f"{mode}_labels.txt"))

        assert len(self.img_paths) == len(self.img_labels)

        self.len = len(self.img_paths)

    def __len__(self):
        return self.len

    def __getitem__(self, item):
        img_path = os.path.join(self.dataset_path, self.img_paths[item])
        img = pil_loader(img_path)

        if self.transforms is not None:
            img = self.transforms(img)

        img_label = int(self.img_labels[item])
        return img, img_label