#!/bin/bash

for i in {1,2,3,4,5}
do
	expert map --to-otlg -t /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/ontology.pkl -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/querymapper.tsv -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/querylabels.h5
        
        expert map --to-otlg -t /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/ontology.pkl -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainmapper.tsv -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/trainlabels.h5

done


