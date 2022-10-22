#!/bin/bash

for i in {1,2,3,4,5}
do
	expert convert -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/querypath.tsv -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/queryCM.h5
	expert convert -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainpath.tsv -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainCM.h5

done
