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

## For V_Transformer, Informer, Autoformer, FEDFormer and Pyraformer  

**In order to do experiments with a specific model, you have to change <span class="bg-info text-success">MODEL</span> in ``V_Transformer``, ``Informer``, ``Autoformer``, ``FEDFormer`` or ``Pyraformer`` in all of these following scripts.**

For Electricity Normal and OTH :
```sh
sh scripts/MODEL/electricity/Electricity.sh

sh scripts/MODEL/electricity/Electricity_OTH.sh

sh scripts/MODEL/electricity/Elec_Continue.sh

sh scripts/MODEL/electricity/Elec_Prediction.sh

sh scripts/MODEL/electricity/Elec_Freeze.sh
```
For Elec_Custom 01 and 04 :
```sh
sh scripts/MODEL/elec_custom/Elec_Custom01.sh

sh scripts/MODEL/elec_custom/Elec_Custom04.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Continue.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Prediction.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Freeze.sh
```
For ETTh1 and ETTh2 :
```sh
sh scripts/MODEL/etth_1_2/ETTh1.sh

sh scripts/MODEL/etth_1_2/ETTh2.sh

sh scripts/MODEL/etth_1_2/etth_Continue.sh

sh scripts/MODEL/etth_1_2/etth_Prediction.sh

sh scripts/MODEL/etth_1_2/etth_Freeze.sh
```