echo "HELLO??"
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --cfg configs/swin_tiny_patch4_window7_224.yaml --data-path /datasets/iccv --batch-size 2 --use-checkpoint --opts TRAIN.EPOCHS 100 TRAIN.WARMUP_EPOCHS 2 WANDB.PROJECT iccv TAG TestBigNewSam2
# python get_test_preds.py --cfg configs/swin_large_patch4_window7_224.yaml --data-path /datasets/iccv --local_rank 0 --batch-size 128 --resume /pretrained/iccv/swin/swin_large_224_sam.pth --eval
