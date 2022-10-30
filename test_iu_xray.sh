# The command below is an easy way to run the model with a set of parammeters
# This command could be run in a linux termianl directly but would be difficult to read and maintain

python main_test.py \
--image_dir data/iu_xray/images/ \
--ann_path data/iu_xray/annotation.json \
--dataset_name iu_xray \
--max_seq_length 60 \
--threshold 3 \
--lr_ed 0.0005 \
--batch_size 64 \
--epochs 100 \
--save_dir results/iu_xray \
--step_size 50 \
--gamma 0.2 \
--seed 9223 \
--load data/iu_xray/model_best.pth
