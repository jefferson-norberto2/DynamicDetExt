# Use an official PyTorch image with CUDA support
FROM pytorch/pytorch:latest

# Set the working directory
WORKDIR /app

# Install necessary system dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Copy your local code to the container (optional)
RUN apt update && apt upgrade -y

RUN pip install numpy>=1.18.5 opencv-python>=4.1.1 Pillow>=7.1.2 PyYAML>=5.3.1 requests>=2.23.0 scipy>=1.4.1

RUN pip install tqdm>=4.41.0 protobuf>=4.21.3 tensorboard>=2.4.1 pandas>=1.1.4 seaborn>=0.11.0 ipython psutil thop pycocotools>=2.0 


# Set environment variable to ensure CUDA is available
ENV NVIDIA_VISIBLE_DEVICES=0
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility
ENV CUDA_VISIBLE_DEVICES=0

# Install Python dependencies (optional)
# RUN pip install --no-cache-dir -r requirements.txt

# Define the command to run your application (optional)
# CMD ["python", "your_script.py"]
