#!/bin/bash

for i in {1,2,3,4,5}
do
	expert train -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainCM.h5 -l /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainlabels.h5 -t /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/ontology.pkl -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/General_model
done
