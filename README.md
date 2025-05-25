## Soil Classification Hackathon Challenge-1

This project performs soil type classification using a deep learning model trained on soil spectral or feature data. The model is developed in PyTorch and evaluated with metrics such as Accuracy and F1-score.

---

##  Dataset

We use the dataset provided through the [Kaggle Competition: Soil Classification](https://www.kaggle.com/competitions/soil-classification).

To download the dataset, use the provided shell script:

```bash
bash download.sh
```

##  Model Details

- **Framework**: PyTorch  
- **Backbone**: ResNet18-based neural network  
- **Input**: Numerical soil features  
- **Output**: Soil class prediction  

### 1. Clone the Repository

```bash
git clone https://github.com/nav-jk/soil_classification_1_annam.git
cd soil_classification_1_annam
```
### 2. Model Training

Open and run the notebook:

```markdown
training.ipynb
```
### 3. Inference / Prediction

To make predictions on new soil data, open and run:

```markdown
inference.ipynb
```
