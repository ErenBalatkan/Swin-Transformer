clearml-task \
--project "Test" \
--name "Test" \
--docker nvcr.io/nvidia/pytorch:21.06-py3 \
--docker_bash_setup_script docker_setup_script.sh \
--docker_args="--shm-size=16g" \
--folder Swin-Transformer \
--requirements requirements.txt \
--script clearml_experiment_runner.py \
--queue eren_pc

