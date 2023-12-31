if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Autoformer" ]; then
    mkdir ./logs/Autoformer
fi

model_name=Autoformer
seq_len=96
file_name="Elec_Prediction"

for pred_len in 96 192 384 768
do

    python -u predict_Elec.py \
      --is_training 0 \
      --root_path ./dataset/ \
      --file_name $file_name \
      --data_path electricity_OTH.csv \
      --model_id electricity_OTH_96_$pred_len \
      --model $model_name \
      --data ECL \
      --features S \
      --seq_len 96 \
      --label_len 48 \
      --pred_len $pred_len \
      --e_layers 2 \
      --d_layers 1 \
      --factor 3 \
      --enc_in 1 \
      --dec_in 1 \
      --c_out 1 \
      --itr 1 \
      --des 'Exp' >logs/Autoformer/$model_name'Predict_elec_on_OTH'_$seq_len'_'$pred_len.log

done
