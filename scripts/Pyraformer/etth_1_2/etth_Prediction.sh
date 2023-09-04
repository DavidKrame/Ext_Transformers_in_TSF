if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Pyraformer" ]; then
    mkdir ./logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Etth_Prediction"

for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main_Continue.py \
      -eval True\
      -data ETTh2 \
      -predict_step $pred_len \
      -root_path ./dataset/ \
      -file_name $file_name \
      -data_path ETTh2.csv \
      -model $model_name \
      -input_size $seq_len \
      -n_head 8 >logs/Pyraformer/$model_name'_Predict_ETTh2_with_1'$pred_len.log
done