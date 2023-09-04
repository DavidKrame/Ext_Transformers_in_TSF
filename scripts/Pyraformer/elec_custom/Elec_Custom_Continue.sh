if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Pyraformer" ]; then
    mkdir ./logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Elec_Custom_Continue"

for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main_Continue.py \
      -data custom \
      -predict_step $pred_len \
      -root_path ./dataset/ \
      -file_name $file_name \
      -data_path custom_elec_04.csv \
      -model $model_name \
      -input_size $seq_len \
      -epoch 3 \
      -n_head 8 >logs/Pyraformer/$model_name_'Continue_elec_custom_on_04_'$pred_len.log
done