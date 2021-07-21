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
mkdir datasets
wandb login 126df13111573362ac4698f1eacd2e1b31e50a45

clearml-data get --id ac705e35976947d3ace2283fbb11a87b
mkdir /datasets/iccv
mkdir /datasets/iccv/val
ln -s  /datasets/iccv/val /clearml_agent_cache/storage_manager/datasets/ds_ac705e35976947d3ace2283fbb11a87b

mkdir /pretrained
clearl-data get --id 842ad2a42bc340418f943b25462b7b13
ln -s /pretrained /clearml_agent_cache/storage_manager/datasets/ds_842ad2a42bc340418f943b25462b7b13
