# Meta-Sorter
Microbiome samples are accumulating at a fast speed, leading to millions of accessible microbiome samples in the public databases. However, due to the lack of strict meta-data standard for data submission and other reasons, there is currently a non-neglectable proportion of microbiome samples in the public database that have no annotations about where these samples were collected, how they were processed and sequenced, etc., among which the missing information about collection niches (biome) is one of the most prominent. The lack of sample biome information has created a bottleneck for mining of the microbiome data, making it difficult in applications such as sample source tracking and biomarker discovery.

Here we have designed Meta-Sorter, a neural network and transfer learning enabled AI method for improving the biome labeling of thousands of microbial community samples without detailed biome information. Meta-Sorter could decode the samples’ biome labels which were annotated as “Mixed biome” into detailed biome labels, refine the biome labels more detailed to obtain more valuable information for reference and corrected the mis-annotated samples’ labels to avoid “cascading accumulation”.

<img src="https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/The%20rationale%20and%20applications%20of%20Meta-Sorter.png" style="zoom:150%;" />

``
The rationale and applications of Meta-Sorter. (A) The process of model construction and transfer learning of Meta-Sorter. Two input files, which are biome ontology and samples’ taxonomic structures with detailed biome information, are required in the process of model construction and transfer learning. The yellow box shows that the neural network model was constructed based on 118,592 existing samples with detailed information of 134 biomes and their biome ontology. The blue box shows that the transfer neural network model was constructed by using 34,209 newly introduced samples from 35 biomes (including 3,083 samples from 8 newly introduced biomes) and transfer learning to the existing neural network model. (B-E) The applications of Meta-Sorter. (B) Meta-Sorter decoded the samples’ biome labels which were annotated as “Mixed biome” into detailed biome labels. (C) Meta-sorter refined the biome labels more detailed to obtain more valuable information for reference. (D) Meta-Sorter corrected the mis-annotated samples’ labels to avoid “cascading accumulation”. (E) Further more application of Meta-Sorter.
``

## Technical description
Meta-Sorter accesses technical support of EXPERT ([get and use](https://github.com/HUST-NingKang-Lab/EXPERT)), which is a scalable community-level microbial source tracking approach. Built upon the biome ontology information and transfer learning techniques, EXPERT has acquired the context-aware flexibility and could easily expand the supervised model's search scope to include the context-depende/nt community samples and understudied biomes. [See the original study.](https://academic.oup.com/bib/article/23/6/bbac396/6702669)

<img src="https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/The%20process%20of%20transfer%20learning.png" style="zoom:150%;" />

``
The process of transfer learning. Transfer learning could adapt an existing neural network model to newly introduced samples by implementing
three steps: (1) transfer: retaining the layers which are might potentially suitable for newly introduced samples, and replacing the other layer; (2) adaptation: quickl updating the parameters of the replaced layers using iterative forward-backward propagation (3) fine-tuning: updating the parameters of retained layers until the parameters converge. Different colors of the modules’ background represent the layers
are suitable for different datasets.
``

## Pre-trained models access
To get the **neural network model** constructed based on 118,592 existing samples with detailed information of 134 biomes and their biome ontology, please click [here](https://github.com/HUST-NingKang-Lab/Meta-Sorter/releases/tag/NNv1.0)   

To get the **transfer neural network model** constructed by using 34,209 newly introduced samples from 35 biomes (including 3,083 samples from 8 newly introduced biomes) and transfer learning to the existing neural network model, please click [here](https://github.com/HUST-NingKang-Lab/Meta-Sorter/releases/tag/TNNv1.0)

## Using Meta-Sorter Now
### Installation

Meta-Sorter accesses technical support of EXPERT. You can simply install EXPERT using `pip` package manager.

```bash
pip install expert-mst    # Install EXPERT
expert init               # Initialize EXPERT and install NCBI taxonomy database
```

### Model download
- Downloading the neural network model
```
wget https://github.com/HUST-NingKang-Lab/Meta-Sorter/releases/download/NNv1.0/Neural.Network.model.zip
unzip Neural.Network.model.zip
mv Neural\ Network\ model neural-network-model
```
- Downloading the transfer neural network model
```
wget https://github.com/HUST-NingKang-Lab/Meta-Sorter/releases/download/TNNv1.0/Transfer.Neural.Network.model.zip
unzip Transfer.Neural.Network.model.zip
mv Transfer\ Neural\ Network\ model transfer-neural-network-model
```

### Predict the source environment
- You can use the neural network model or the transfer neural network model to predict the potential collecting sources of the microbial community samples.
- We presented an instance of samples from an study that was annotated as "Mixed biome" in MGnify (study id: MGYS00002446). The format of each input file can be known by viewing the file content.

##### Convert input abundance data to model-acceptable hdf file
```
mkdir datafile
cd datafile
wget https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/datafile/SRP071862_taxonomy_abundances_SSU_v4.1.tsv
wget https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/datafile/path_SRP071862.tsv
wget https://github.com/HUST-NingKang-Lab/Meta-Sorter/blob/main/datafile/ontology.pkl
expert convert -t ontology.pkl -o path_SRP071862.tsv --in-cm
```
##### Predict by using the neural network model
```
expert search -i path_SRP071862.tsv -m neural-network-model -o Search_NN
```
- You can view the Search_NN file to get the prediction results of each sample.
