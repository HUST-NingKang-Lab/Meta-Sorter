#!/bin/bash

for i in {1,2,3,4,5}
do

	expert search -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/queryCM.h5 -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/Search_GM -m /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/General_model

done

