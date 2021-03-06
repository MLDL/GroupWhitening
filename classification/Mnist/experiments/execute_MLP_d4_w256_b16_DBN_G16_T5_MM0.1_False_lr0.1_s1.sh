#!/usr/bin/env bash
cd "$(dirname $0)/.." 
python3 mnist.py \
-a=MLP \
--width=256 \
--batch-size=16 \
--depth=4 \
--epochs=50 \
-oo=sgd \
-oc=momentum=0 \
-wd=0 \
--lr=0.1 \
--lr-method=step \
--lr-step=30 \
--lr-gamma=0.2 \
--dataset-root=/raid/dd/ \
--norm=DBN \
--norm-cfg=num_channels=16,momentum=0.1,affine=False,dim=2 \
--seed=1 \
--vis \
