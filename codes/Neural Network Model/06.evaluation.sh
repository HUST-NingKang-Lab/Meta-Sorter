#!/bin/bash
for i in {1,2,3,4,5}
do

	expert evaluate -i /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/Search_GM -l /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/querylabels.h5 -o /home/wangnan/EXPERT-sorter/1.general_model/exp/exp$i/Evaluation

done

