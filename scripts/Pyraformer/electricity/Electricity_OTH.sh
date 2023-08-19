# cd Pyraformer
if [ ! -d "../logs" ]; then
    mkdir ../logs
fi

if [ ! -d "../logs/Pyraformer" ]; then
    mkdir ../logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Electricity_OTH"

# Electricity_OTH
for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main.py \
      --data electricity \
      --input_size 96 \
      --predict_step $pred_len \
      --root_path ./dataset/ \
      --file_name $file_name \
      --data_path electricity_OTH.csv \
      --model $model_name \
      --seq_len $seq_len \
      --epoch 10 \
      --n_head 8 >../logs/Pyraformer/Pyraformer_Electricity_OTH_$pred_len.log
done