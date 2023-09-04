if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Pyraformer" ]; then
    mkdir ./logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Elec_Freeze"

for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main_Freeze.py \
      -data electricity \
      -predict_step $pred_len \
      -root_path ./dataset/ \
      -file_name $file_name \
      -data_path electricity_OTH.csv \
      -model $model_name \
      -input_size $seq_len \
      -epoch 10 \
      -n_head 8 >logs/Pyraformer/Elec_Freeze_$pred_len.log
done