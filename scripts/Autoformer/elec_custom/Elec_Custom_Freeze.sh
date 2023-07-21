if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Autoformer" ]; then
    mkdir ./logs/Autoformer
fi

model_name=Autoformer
seq_len=96
file_name="Elec_Custom_Freeze"

for pred_len in 96 192 384 768
do

    python -u train_Freeze_Elec_Custom.py \
      --is_training 1 \
      --file_name $file_name \
      --root_path ./dataset/ \
      --data_path custom_elec_04.csv \
      --model_id custom_elec_04_96_$pred_len \
      --model $model_name \
      --data custom \
      --features S \
      --patience 5\
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
      --train_epochs 10 >logs/Autoformer/$model_name'Freeze_Elec_Custom_01_for_train_04'_$seq_len'_'$pred_len.log

done
