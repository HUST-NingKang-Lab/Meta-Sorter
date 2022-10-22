#!/bin/bash

for i in {1,2,3,4,5}
do

	expert transfer \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainCM.h5 \
		-l /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainlabels.h5 \
		-m /home/wangnan/EXPERT-sorter/1.general_model/exp/exp5/General_model \
		-t /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/ontology.pkl \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/Transfer_GM

done
