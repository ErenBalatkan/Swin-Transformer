clearml-task \
--project "Test" \
--name "Test" \
--docker pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime \
--docker_bash_setup_script clearml_docker_setup_script.sh \
--docker_args="--shm-size=16g --ipc=host" \
--requirements requirements.txt \
--script clearml_experiment_runner.py \
--queue ub_54