FROM python:3.8
WORKDIR /workspace
RUN pip install numpy pandas python-magic tqdm requests
