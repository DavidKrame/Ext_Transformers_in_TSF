# cd Pyraformer
if [ ! -d "../logs" ]; then
    mkdir ../logs
fi

if [ ! -d "../logs/Pyraformer" ]; then
    mkdir ../logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Elec_Custom_04"

# Elec_Custom_01
for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main.py \
      --data custom \
      --input_size 96 \
      --predict_step $pred_len \
      --root_path ./dataset/ \
      --file_name $file_name \
      --data_path custom_elec_04.csv \
      --model $model_name \
      --seq_len $seq_len \
      --epoch 10 \
      --n_head 8 >../logs/Pyraformer/Pyraformer_Elec_Custom_04_$pred_len.log
done