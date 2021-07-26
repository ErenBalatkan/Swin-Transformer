# wget https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_large_patch4_window12_384_22k.pth
python -m torch.distributed.run --nproc_per_node 1 --master_port 12345 \
main.py --cfg configs/swin_large_patch4_window12_384.yaml --resume swin_large_patch4_window12_384_22k.pth \
--data-path $ICCV_DATASET_PATH --batch-size 2 --use-checkpoint --opts TRAIN.EPOCHS 100 TRAIN.WARMUP_EPOCHS 2 \
WANDB.PROJECT iccv TAG swin_large_384 MODEL.RESUME_SKIP_EVAL True