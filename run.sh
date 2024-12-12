#!/bin/bash

# Create a virtual environment
python3 -m venv venv || python -m venv venv
if [ $? -ne 0 ]; then
    echo "Failed to create a virtual environment."
    exit 1
fi

# Activate the virtual environment
source venv/bin/activate

# Install required packages
pip install -r requirements.txt

echo "Virtual environment setup complete."

python3 main.py