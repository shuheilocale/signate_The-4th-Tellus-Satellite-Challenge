docker run --rm --gpus all \
-v $(pwd)/dataset:/workspace/dataset \
-v $(pwd)/src:/workspace/src \
-v $(pwd)/notebook:/workspace/notebook \
-v $(pwd)/output:/workspace/output \
-p 8888:8888 \
--name pytorch-lab \
pytorch-lab \
jupyter lab