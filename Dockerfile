# Use an official PyTorch image with CUDA support as a base image
FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the python script
COPY check_cuda.py .

# Run the python script when the container launches
CMD ["python", "check_cuda.py"]