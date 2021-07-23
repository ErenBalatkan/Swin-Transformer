pip install mmcv-full
pip install terminaltables
pip install termcolor
pip install timm
pip install albumentations
pip install wandb
pip install clearml
pip uninstall -y pycocotools & pip install mmpycocotools
pip install yacs
pip install kornia
pip install pandas
pip install numpy
pip install sklearn
wandb login 126df13111573362ac4698f1eacd2e1b31e50a45
mkdir -p /datasets/iccv
clearml-data get --id 04fe1e704c1a424bbe941d8f95f23fd8
ln -s /clearml_agent_cache/storage_manager/datasets/ds_04fe1e704c1a424bbe941d8f95f23fd8 /datasets/iccv/val
clearml-data get --id ac705e35976947d3ace2283fbb11a87b
ln -s  /clearml_agent_cache/storage_manager/datasets/ds_ac705e35976947d3ace2283fbb11a87b /datasets/iccv/test
clearml-data get --id 2f8e31b466494869bddc88d100eded5c
ln -s /clearml_agent_cache/storage_manager/datasets/ds_2f8e31b466494869bddc88d100eded5c /datasets/iccv/train
clearml-data get --id ae637727198c4b7984f8b785e545c203
ln -s /clearml_agent_cache/storage_manager/datasets/ds_ae637727198c4b7984f8b785e545c203 /pretrained
export ICCV_DATASET_PATH=/datasets/iccv