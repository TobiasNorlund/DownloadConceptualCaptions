#!/bin/bash
set -ex

docker build -t tobias/download-conceptual-captions .
docker run -it -u $(id -u):$(id -g) \
	-v /media/bigdata/machine-learning/conceptual-captions/training:/workspace/training \
	-v /media/bigdata/machine-learning/conceptual-captions/validation:/workspace/validation \
	-v $(pwd):/workspace tobias/download-conceptual-captions bash
