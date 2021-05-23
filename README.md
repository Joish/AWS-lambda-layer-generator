# AWS-lambda-layer-generator
Docker for creating lambda layer for python 

# Docker Build
docker build -t lambda_layer_python:latest

# Lambda Layer Generator
docker run -it -v $(pwd):/package lambda_layer_python <PACKAGE_NAME>