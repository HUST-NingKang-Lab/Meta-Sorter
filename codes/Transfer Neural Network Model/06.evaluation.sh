#!/bin/bash

for i in {1,2,3,4,5}
do
	
	expert evaluate \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/Search_Transfer \
		-l /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/querylabels.h5 \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/Evaluation

done
