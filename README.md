# R2Gen AHDS Assignment 2

This is a fork ot the implementation of [Generating Radiology Reports via Memory-driven Transformer](https://arxiv.org/pdf/2010.16056.pdf) at EMNLP-2020.

Due to our project time contraints, we did not test the R2Gen model on the MIMIC X-Ray set as it would take an estimated 52+ hours to run a single test based on the run time of the IU X-ray data set.
To make the repository easy to read, we removed the MIMIC data specific run instructions and files.

## Requirements

- `anaconda==22.9.0`
- `python==3.9`
- `torch==1.7.1`
- `torchvision==0.8.2`
- `opencv-python==4.4.0.42`
- `numpy`
- `java`

## Download R2Gen
You can see our improved trained model in `data/iu-xray-b-64-l-0005-g-2/model_best.pth`.

## Datasets
We use the IU X-Ray dataset in our evaluation.

For `IU X-Ray`, you can download the dataset from [here](https://drive.google.com/file/d/1fQXpf4vz5t2QYQ89iRXv0U_OVA0MNCtJ/view?usp=sharing).
Unzip the files and then put the files in `data/iu_xray`.

> NOTE: The `IU X-Ray` dataset is of small size, and thus the variance of the results is large.

## Train

To adjust any hyperparameters, edit `train_iu_xray.sh`. The file is currently set with the adjusted values from our best run namely:

```bash
lr_ve 0.00005 \
lr_ed 0.0005 \
gamma 0.2 \
batch_size 64 \
step 50 \
```

To train a model on the IU X-Ray data, run the following:

```bash
bash train_iu_xray.sh
```

## Test

To test a model on the IU X-Ray data, run the following:

```bash
bash test_iu_xray.sh
```

## Citations

```
@inproceedings{chen-emnlp-2020-r2gen,
    title = "Generating Radiology Reports via Memory-driven Transformer",
    author = "Chen, Zhihong and
      Song, Yan  and
      Chang, Tsung-Hui and
      Wan, Xiang",
    booktitle = "Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing",
    month = nov,
    year = "2020",
}
```
