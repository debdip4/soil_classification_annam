#  Soil Classification Hackathon Challenge-1

This project performs soil type classification using a deep learning model trained on soil spectral or feature data. The model is developed in PyTorch and evaluated with metrics such as Accuracy and F1-score.

---

##  Dataset

We use the dataset provided through the [Kaggle Competition: Soil Classification](https://www.kaggle.com/competitions/soil-classification-part-2).

To download the dataset, use the provided shell script:

```bash
bash download.sh
```
##  Model Details

- **Framework**: PyTorch  
- **Backbone**: ResNet18-based neural network  
- **Input**: Numerical soil features  
- **Output**: Binary Classification  
- **Current F1-score**: **0.89**

### 1. Clone the Repository

```bash
git clone https://github.com/nav-jk/soil_classification_1_annam
cd soil_classification_1_annam
```
### 2. Model Training

Open and run the notebook:

```markdown
training.ipynb
```
### 3.Inference

To make predictions on new soil data, open and run:

```markdown
inference.ipynb
```

## Soil vs Not-Soil Classification (Challenge 2)

**Team Name:** HelloWorld  
**Model Used:** ResNet18 (reused from Challenge 1)  
**Final Score:** F1 = 0.8908  

### Objective

To classify test images as either soil (label = 1) or not-soil (label = 0),  
without having any negative examples in the training set.

### Approach

- We reused the ResNet18 model trained during Challenge 1 for soil type classification.  
- That model was trained to classify among:  
  Red Soil, Black Soil, Alluvial Soil, Clay Soil  

- For Challenge 2, we used the trained model in inference mode only.

### Logic

- For each test image, the model predicts class probabilities across the 4 soil types.  
- If the highest softmax probability (confidence) > threshold (e.g., 0.90), we assign label = 1 (soil).  
- Otherwise, we assign label = 0 (not-soil).

### Outcome

This confidence-based inference strategy achieved an F1 score of **0.8908**  
without requiring retraining or manual negative labeling.  
See `inference.ipynb` for implementation.



