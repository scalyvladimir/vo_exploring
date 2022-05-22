DATA_ROOT=../..
TRAIN_SET=$DATA_ROOT/kitti_vo_256

python3 ../train.py $TRAIN_SET \
--resnet-layers 50 \
--num-scales 1 \
-b4 -s0.1 -c0.5 --epoch-size 1000 --sequence-length 3 \
--with-ssim 1 \
--with-mask 1 \
--with-auto-mask 1 \
--with-pretrain 0 \
--pretrained-disp //PATH// \
--pretrained-pose //PATH// \
--log-output //PATH?// \
--epochs 100 \
--lr 1e-3 \
--name //NAME// \
--with-coord-conv 1 \
--conv1-weight-mode //INIT_WEIGHT// \
--fine-tune-mode //MODE// \
--unfreeze-epoch //INT// \
--use-scheduler 1 \
--warmup-lr 1e-5 \
--warmup-epoch 70 \
--step-size 10 \
--gamma-lr .1 \
--min-lr 1e-5 \
--run-id $1 \