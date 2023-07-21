## MLP
For Elec_Custom 01 and 04 :
```sh
sh scripts/MLP-LSTM/ForMLP/elec_custom/MLP_Elec_Custom_Prediction.sh

sh scripts/MLP-LSTM/ForMLP/elec_custom/MLP_Elec_Custom_Freeze.sh

sh scripts/MLP-LSTM/ForMLP/elec_custom/MLP_Elec_Custom_Continue.sh

sh scripts/MLP-LSTM/ForMLP/elec_custom/MLP_Elec_Custom01.sh

sh scripts/MLP-LSTM/ForMLP/elec_custom/MLP_Elec_Custom04.sh
```

For Electricity Normal and OTH :
```sh
sh scripts/MLP-LSTM/ForMLP/electricity/MLP_Elec_Prediction.sh

sh scripts/MLP-LSTM/ForMLP/electricity/MLP_Elec_Freeze.sh

sh scripts/MLP-LSTM/ForMLP/electricity/MLP_Elec_Continue.sh

sh scripts/MLP-LSTM/ForMLP/electricity/MLP_Electricity.sh

sh scripts/MLP-LSTM/ForMLP/electricity/MLP_Electricity_OTH.sh
```

For ETTh1 and ETTh2 :
```sh
sh scripts/MLP-LSTM/ForMLP/etth_1_2/MLP_etth_Prediction.sh

sh scripts/MLP-LSTM/ForMLP/etth_1_2/MLP_etth_Freeze.sh

sh scripts/MLP-LSTM/ForMLP/etth_1_2/MLP_etth_Continue.sh

sh scripts/MLP-LSTM/ForMLP/etth_1_2/MLP_ETTh1.sh

sh scripts/MLP-LSTM/ForMLP/etth_1_2/MLP_ETTh2.sh
```

## LSTM
For Elec_Custom 01 and 04 :
```sh
sh scripts/MLP-LSTM/ForLSTM/elec_custom/LSTM_Elec_Custom_Prediction.sh

sh scripts/MLP-LSTM/ForLSTM/elec_custom/LSTM_Elec_Custom_Freeze.sh

sh scripts/MLP-LSTM/ForLSTM/elec_custom/LSTM_Elec_Custom_Continue.sh

sh scripts/MLP-LSTM/ForLSTM/elec_custom/LSTM_Elec_Custom01.sh

sh scripts/MLP-LSTM/ForLSTM/elec_custom/LSTM_Elec_Custom04.sh
```

For Electricity Normal and OTH :
```sh
sh scripts/MLP-LSTM/ForLSTM/electricity/LSTM_Elec_Prediction.sh

sh scripts/MLP-LSTM/ForLSTM/electricity/LSTM_Elec_Freeze.sh

sh scripts/MLP-LSTM/ForLSTM/electricity/LSTM_Elec_Continue.sh

sh scripts/MLP-LSTM/ForLSTM/electricity/LSTM_Electricity.sh

sh scripts/MLP-LSTM/ForLSTM/electricity/LSTM_Electricity_OTH.sh
```

For ETTh1 and ETTh2 :
```sh
sh scripts/MLP-LSTM/ForLSTM/etth_1_2/LSTM_etth_Prediction.sh

sh scripts/MLP-LSTM/ForLSTM/etth_1_2/LSTM_etth_Freeze.sh

sh scripts/MLP-LSTM/ForLSTM/etth_1_2/LSTM_etth_Continue.sh

sh scripts/MLP-LSTM/ForLSTM/etth_1_2/LSTM_ETTh1.sh

sh scripts/MLP-LSTM/ForLSTM/etth_1_2/LSTM_ETTh2.sh
```
## For V_Transformer (or Informer, or Autoformer)
**In order to do experiments with Informer or Autoformer, you have to change "V_Transformer" in 'Informer' or 'Autoformer' in all of these following scripts.**

For Electricity Normal and OTH :
```sh
sh scripts/V_Transformer/electricity/V_T_Electricity.sh

sh scripts/V_Transformer/electricity/V_T_Electricity_OTH.sh

sh scripts/V_Transformer/electricity/V_T_Elec_Continue.sh

sh scripts/V_Transformer/electricity/V_T_Elec_Prediction.sh

sh scripts/V_Transformer/electricity/V_T_Elec_Freeze.sh
```
For Elec_Custom 01 and 04 :
```sh
sh scripts/V_Transformer/elec_custom/V_T_Elec_Custom01.sh

sh scripts/V_Transformer/elec_custom/V_T_Elec_Custom04.sh

sh scripts/V_Transformer/elec_custom/V_T_Elec_Custom_Continue.sh

sh scripts/V_Transformer/elec_custom/V_T_Elec_Custom_Prediction.sh

sh scripts/V_Transformer/elec_custom/V_T_Elec_Custom_Freeze.sh
```
For ETTh1 and ETTh2 :
```sh
sh scripts/V_Transformer/etth_1_2/V_T_ETTh1.sh

sh scripts/V_Transformer/etth_1_2/V_T_ETTh2.sh

sh scripts/V_Transformer/etth_1_2/V_T_etth_Continue.sh

sh scripts/V_Transformer/etth_1_2/V_T_etth_Prediction.sh

sh scripts/V_Transformer/etth_1_2/V_T_etth_Freeze.sh
```

## For Conformer
For Electricity Normal and OTH :
```sh
sh scripts/Conformer/electricity/Conformer.sh

sh scripts/Conformer/electricity/ConformerOthers.sh

sh scripts/Conformer/electricity/Conformer_Prediction_Elec1.sh

sh scripts/Conformer/electricity/Conformer_Elec1_SIRN.sh

sh scripts/Conformer/electricity/Conformer_Continue.sh
```
For Elec_Custom 01 and 04 :
```sh
sh scripts/Conformer/elec_custom/Conformer.sh

sh scripts/Conformer/elec_custom/Conformer_Continue.sh

sh scripts/Conformer/elec_custom/Conformer_Prediction_Elec_Custom.sh

sh scripts/Conformer/elec_custom/Conformer_Elec_Cust_SIRN.sh
```
For ETTh1 and ETTh2 :
```sh
sh scripts/Conformer/etth_1_2/Conformer.sh

sh scripts/Conformer/etth_1_2/Conformer_Continue.sh

sh scripts/Conformer/etth_1_2/Conformer_Prediction_ETTh12.sh

sh scripts/Conformer/etth_1_2/Conformer_ETTh_1_2_SIRN.sh
```

## EXEMPLES
To train *NLinear* and *DLinear* on **ETTh1, ETTm1, electricity** and **weather** datasets, use :  
```sh
sh scripts/Linears/etth1UNI.sh

sh scripts/Linears/ettm1UNI.sh

sh scripts/Linears/weatherUNI.sh

sh scripts/Linears/electricityUNI.sh
```

The results will be in **logs** and **csv_results** directories.