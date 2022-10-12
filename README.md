# Meta-Sorter
Microbiome samples are accumulating at a fast speed, leading to millions of accessible microbiome samples in the public databases. However, due to the lack of strict meta-data standard for data submission and other reasons, there is currently a non-neglectable proportion of microbiome samples in the public database that have no annotations about where these samples were collected, how they were processed and sequenced, etc., among which the missing information about collection niches (biome) is one of the most prominent. The lack of sample biome information has created a bottleneck for mining of the microbiome data, making it difficult in applications such as sample source tracking and biomarker discovery.

Here we have designed Meta-Sorter, a neural network and transfer learning enabled AI method for improving the biome labeling of thousands of microbial community samples without detailed biome information. Meta-Sorter could decode the samples’ biome labels which were annotated as “Mixed biome” into detailed biome labels, refine the biome labels more detailed to obtain more valuable information for reference and corrected the mis-annotated samples’ labels to avoid “cascading accumulation”.

<img src="https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/The%20rationale%20and%20applications%20of%20Meta-Sorter" style="zoom:150%;" />

``
The transfer learning workflow of microbial-based cross-regional diagnosis of diseases: (1) Fundamental model establishment: ab initio train the disease neural network (DNN) model on the training set of city A. (2) Transfer model establishment: implement transfer learning to generate a transfer DNN for another city B by using the training set of city B. (3)Classification test: test the transfer DNN on the testing set of city B.
``

## Get and use
To learn how to install the model and how to use it, click [here](https://github.com/HUST-NingKang-Lab/EXPERT)

<img src="https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/The%20process%20of%20transfer%20learning.png" style="zoom:150%;" />

``
The transfer learning workflow of microbial-based cross-regional diagnosis of diseases: (1) Fundamental model establishment: ab initio train the disease neural network (DNN) model on the training set of city A. (2) Transfer model establishment: implement transfer learning to generate a transfer DNN for another city B by using the training set of city B. (3)Classification test: test the transfer DNN on the testing set of city B.
``
