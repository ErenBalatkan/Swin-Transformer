apt-get update
apt-get install ffmpeg libsm6 libxext6  -y
pip install mmcv-full
pip install terminaltables
pip install termcolor
pip install timm
pip install albumentations
pip install wandb
pip install clearml
pip uninstall -y pycocotools
pip install mmpycocotools
pip install yacs
pip install kornia

wandb login 126df13111573362ac4698f1eacd2e1b31e50a45

mkdir -p /datasets/iccv/val
clearml-data get --id 04fe1e704c1a424bbe941d8f95f23fd8
ln -s  /datasets/iccv/val /clearml_agent_cache/storage_manager/datasets/ds_04fe1e704c1a424bbe941d8f95f23fd8

mkdir -p /datasets/iccv/test
clearml-data get --id ac705e35976947d3ace2283fbb11a87b
ln -s  /datasets/iccv/val /clearml_agent_cache/storage_manager/datasets/ds_ac705e35976947d3ace2283fbb11a87b

mkdir -p /datasets/iccv/train
clearml-data get --id 2f8e31b466494869bddc88d100eded5c
ln -s  /datasets/iccv/train /clearml_agent_cache/storage_manager/datasets/ds_2f8e31b466494869bddc88d100eded5
