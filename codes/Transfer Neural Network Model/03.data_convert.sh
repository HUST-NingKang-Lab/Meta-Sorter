#!/bin/bash

for i in {1,2,3,4,5}
do
	
	expert convert \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/querypath.tsv \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/queryCM.h5 --in-cm
	expert convert \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainpath.tsv \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/trainCM.h5 --in-cm

done

