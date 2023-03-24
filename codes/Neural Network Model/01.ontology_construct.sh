#!/bin/bash

for i in {1,2,3,4,5}
do
	expert construct -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/biome.tsv -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/ontology.pkl
done

