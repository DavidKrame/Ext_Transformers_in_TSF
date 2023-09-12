if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Informer" ]; then
    mkdir ./logs/Informer
fi

model_name=Informer
seq_len=96
file_name="Binance_Continue"

for pred_len in 96 192 384 768
do

    python -u train_continue_Weather.py \
      --is_training 1 \
      --root_path ./dataset/ \
      --file_name $file_name \
      --data_path Binance_OTH.csv \
      --model_id Binance_OTH_96_$pred_len \
      --model $model_name \
      --data Binance \
      --features S \
      --patience 2\
      --seq_len 96 \
      --label_len 48 \
      --pred_len $pred_len \
      --e_layers 2 \
      --d_layers 1 \
      --factor 3 \
      --enc_in 1 \
      --dec_in 1 \
      --c_out 1 \
      --des 'Exp' \
      --itr 1 \
      --train_epochs 3 >logs/Informer/$model_name'_Continue_Binance_on_OTH'_$seq_len'_'$pred_len.log

done
