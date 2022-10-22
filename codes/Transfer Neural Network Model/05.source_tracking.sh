#!/bin/bash

for i in {1,2,3,4,5}
do

	expert search \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/queryCM.h5 \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/Search_Transfer \
		-m /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/Transfer_GM

done
