#!/bin/bash

OUTPUTDIR="../outputs"
EXPERIMENT="CUB_1_test"
DATADIR="../../../../Data/Dataset/CUB"
EPOCHS=100  # new_release: 50
SEED=2  # new_release: 2
SHARED_LAT_DIM=48  # new_release: 48
MS_LAT_DIM=16  # new_release: 16

OBJ="elbo"  # elbo, dreg, vcca, new_release: "dreg"
BATCH=32  # new_release: 32
K=1  # new_release: 10
beta=1.0  # new_release: 1.0

gpuid=3

# new_release: obj="dreg", K=10, batch-size=32, beta=1.0, priorposterior="Normal"
# Train MMVAEplus
CUDA_VISIBLE_DEVICES=${gpuid} python train_MMVAEplus_CUB.py --experiment $EXPERIMENT --obj $OBJ --K $K --batch-size $BATCH --epochs $EPOCHS \
      --latent-dim-z $SHARED_LAT_DIM --latent-dim-w $MS_LAT_DIM --seed $SEED --beta $beta \
      --datadir $DATADIR  --outputdir $OUTPUTDIR \
      --inception_path "${DATADIR}/pt_inception-2015-12-05-6726825d.pth" \
      --priorposterior "Normal"

