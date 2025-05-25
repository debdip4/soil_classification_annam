# Soil Classification Project

This repository contains code for training and inference of a soil type classification model using PyTorch and transfer learning on ResNet-18.

---

## Data
- Create a data folder in the root directory
- In the root folder enter the following in a terminal
  ```bash
  kaggle competitions download -c soil-classification
  
## Files

- `training.ipynb`  
  Notebook to train the soil classification model.  
  **Usage:** Just run all cells sequentially to train the model.  
  The best model weights are saved to `best_model.pth`.

- `inference.ipynb`  
  Notebook to run inference on test images using the trained model.  
  **Usage:** Run all cells sequentially to generate predictions.  
  Outputs a `submission1.csv` file with image IDs and predicted soil types.

---

## Overview

- The project uses transfer learning with a pretrained ResNet-18 model, fine-tuned on a soil image dataset.
- Dataset is loaded via custom PyTorch `Dataset` classes for training, validation, and testing.
- Data augmentation is applied during training.
- Model performance is evaluated using macro F1 score and per-class F1 scores.
- The training notebook performs early saving of the best model based on minimum per-class F1 score.
- The inference notebook loads the saved model and predicts soil classes on test images.

---

## Requirements

- Python 3.x
- PyTorch
- torchvision
- pandas
- scikit-learn
- Pillow
- tqdm

Install dependencies with:

```bash
pip install torch torchvision pandas scikit-learn pillow tqdm
