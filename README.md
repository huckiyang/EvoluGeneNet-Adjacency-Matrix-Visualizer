# ICML'18 workshop - Evolutionary Strategy Gradient Decent for Designing Functional Gene Circuit
ICML-IJCAI Workshop 2018 (tensorflow version)

### New Colab version 

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/huckiyang/EvoluGeneNet-Adjacency-Matrix-Visualizer/blob/master/EvoluGeneNet_ICML2018_CompBioWorkshop.ipynb)

A Colab (online python 3 notebook version) could be found out here. 

- ICML 2018 Workshop, Learning Functions in Large Networks requires Modularity and produces Multi-Agent Dynamics

We sincerely appreciate Dr. Hiscock for open source his original GeneNet code.

This repo was modified from his version. https://github.com/twhiscock/GeneNet-

His latest version of GeneNet https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6487017/

## Adjacency-Matrix-Visualizer

![img](https://github.com/huckiyang/EvoluGeneNet-Adjacency-Matrix-Visualizer/blob/master/img/Fig4.png)

### A scalable tool to visualize the adjacency matrix with values on the edges, direction, and the sum of value as the node size.

- to use the Adjacency-Matrix-Visualizer. Please refer to ![Visualizer.m](https://github.com/huckiyang/EvoluGeneNet-Adjacency-Matrix-Visualizer/blob/master/Adj_Network_Visualization/Visualizer.m). 

- Put your matrix in Visualizer(martix) could get the scalable visualizatoin. 

- [![View Adjacency-Matrix-Visualizer on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://jp.mathworks.com/matlabcentral/fileexchange/73772-adjacency-matrix-visualizer)

## Functional Dynamic Gene Circuit

![img](https://github.com/huckiyang/EvoluGeneNet-Adjacency-Matrix-Visualizer/blob/master/img/frenchflag_gene_circuit.png)

- x-axis = input-level (concentration) & y-axis = level (feedback)

C. H. Huck Yang, Rise Ooi, Tom Hiscock, Vctor Eguluz and Jesper Tegner

https://arxiv.org/abs/1807.03001

## Reference

If you find this useful in your work, please consider citing the following reference:
```c
@article{yang2018learning,
  title={Learning Functions in Large Networks requires Modularity and produces Multi-Agent Dynamics},
  author={Yang, CH and Ooi, Rise and Hiscock, Tom and Eguiluz, Victor and Tegner, Jesper},
  journal={Workshop of Computational Biology, ICML 2018},
  year={2018}
}
```
