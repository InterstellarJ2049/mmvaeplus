
# PolyMNIST regeneration:
python datasets_PolyMNIST.py \
    --seed 123 \
    --num-modalities 5 \
    --backgroundimagepath /path/to/background_jpgs \
    --savepath-train /path/to/PolyMNIST/train \
    --savepath-val   /path/to/PolyMNIST/val \
    --savepath-test  /path/to/PolyMNIST/test \
    --repetitions 6 \
    --train-split-size 55000 \
    --change-colors
