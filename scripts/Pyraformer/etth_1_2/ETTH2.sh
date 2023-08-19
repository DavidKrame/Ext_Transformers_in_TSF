# cd Pyraformer
if [ ! -d "../logs" ]; then
    mkdir ../logs
fi

if [ ! -d "../logs/Pyraformer" ]; then
    mkdir ../logs/Pyraformer
fi

model_name=Pyraformer
seq_len=96
file_name="Etth2"

# ETTh1
for pred_len in 96 192 384 768
do
    python -u Pyraformer/long_range_main.py \
      -data ETTh2 \
      -input_size 96 \
      -predict_step $pred_len \
      -root_path ./dataset/ \
      -file_name $file_name \
      -data_path ETTh2.csv \
      -model $model_name \
      -seq_len $seq_len \
      -epoch 10 \
      -n_head 8 >../logs/Pyraformer/Pyraformer_ETTh2_$pred_len.log
done