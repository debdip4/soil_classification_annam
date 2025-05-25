#!/bin/bash

COMPETITION_NAME="soil-classification-part-2"
TARGET_DIR="./data"

echo "Downloading dataset from Kaggle competition: $COMPETITION_NAME"
mkdir -p "$TARGET_DIR"
kaggle competitions download -c "$COMPETITION_NAME" -p "$TARGET_DIR" --unzip

echo "Download complete. Files saved to $TARGET_DIR"
