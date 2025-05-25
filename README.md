# Soil Image Classification Challenge – Annam.ai, IIT Ropar

This repository contains the solution for the Soil Image Classification Challenges (Part 1 and Part 2) conducted by Annam.ai at IIT Ropar.

## Challenge Overview

## Part 1: Soil Type Classification
- Task: Classify soil images into four categories:
  - Red Soil
  - Black Soil
  - Alluvial Soil
  - Clay Soil
- Model Used: ResNet18
- Approach: Standard supervised learning using labeled soil images
- Output: A 4-class classifier saved as best_model.pth

## Part 2: Soil vs Not-Soil Classification
- Task: Identify whether an image is a soil image (label = 1) or not (label = 0)
- Challenge: Training data only contained soil images (no negatives)
- Solution:
  - Reused the trained model from Part 1
  - Inference based on confidence threshold of predicted soil type
  - Images with max probability > 0.90 were labeled as soil
- Final Score: F1 = 0.8908

\## Folder Structure

.

├── data/

│ └── download.sh # Kaggle download script

├── docs/card/

│ ├── architecture.png # Model architecture diagram

│ └── ml-metrics.json # F1 score details

├── models/

│ └── best\_model.pth # Pretrained model from Challenge 1

├── notebooks/

│ ├── training.ipynb # Describes logic and reuse strategy

│ └── inference.ipynb # Final inference code

├── src/

│ ├── pre\_processing.py # Placeholder for preprocessing

│ └── post\_processing.py # Optional, if needed

├── submission/

│ └── submission.csv # Final binary classification submission

├── requirements.txt # All Python dependencies

└── README.md # Project overview and usage

## Setup Instructions

### 1. Clone the Repository

### 2. Download Dataset

Ensure you have Kaggle API set up (~/.kaggle/kaggle.json).

## Further instructions are provided in README file of each challenge


This will generate submission files for various thresholds. The file submission.csv contains the final binary labels.

## Notes

- Model in models/best_model.pth was trained for Part 1 and reused for Part 2.
- All code is clean, reproducible, and commented.

## Team

Team Name: HelloWorld
