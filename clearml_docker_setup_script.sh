apt-get update
apt-get install ffmpeg libsm6 libxext6  -y
pip install mmcv-full
pip install terminaltables
pip install timm
pip install albumentations
pip install wandb
pip install clearml
pip uninstall -y pycocotools
pip install mmpycocotools
pip install yacs

wandb login 126df13111573362ac4698f1eacd2e1b31e50a45
clearml-data get --id ac705e35976947d3ace2283fbb11a87b
