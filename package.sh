#!/bin/bash
mkdir lambda_function
cd lambda_function

mkdir python
cd python

python3.8 -m pip install $1 -t ./

cd ..

rm -f /package/$1.zip

zip -r /package/$1.zip .

# zip -r /tmp/<labmda_layer>.zip .   