if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Reformer" ]; then
    mkdir ./logs/Reformer
fi

model_name=Reformer
seq_len=96
file_name="Elec_Continue"

for pred_len in 96 192 384 768
do

    python -u train_continue_Elec.py \
      --is_training 1 \
      --root_path ./dataset/ \
      --file_name $file_name \
      --data_path electricity_OTH.csv \
      --model_id electricity_OTH_96_$pred_len \
      --model $model_name \
      --data ECL \
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
      --train_epochs 3 >logs/Reformer/$model_name'_Continue_electricity_on_OTH'_$seq_len'_'$pred_len.log

done
