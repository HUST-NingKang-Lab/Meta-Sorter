#!/bin/bash

for i in {1,2,3,4,5}
do
	expert map --to-otlg \
		-t /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/ontology.pkl \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/querymapper.tsv \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/querylabels.h5 

	expert map --to-otlg \
		-t /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/ontology.pkl \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainmapper.tsv \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainlabels.h5

done

