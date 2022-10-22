#!/bin/bash

for i in {1,2,3,4,5}
do 
	
	expert construct \
		-i /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/biome.tsv \
		-o /home/wangnan/EXPERT-sorter/3.transfer_independent/transfer/exp/exp$i/ontology.pkl

done 
