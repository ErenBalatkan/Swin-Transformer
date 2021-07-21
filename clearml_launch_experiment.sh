clearml-task \
--project "Test" \
--name "Test" \
--docker eren-pytorch \
--docker_bash_setup_script clearml_docker_setup_script.sh \
--docker_args="--shm-size=16g --ipc=host -v /media:/media" \
--folder Swin-Transformer \
--requirements requirements.txt \
--script "clearml_experiment_runner.py" \
--queue eren_pc

