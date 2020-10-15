docker run --rm -it --gpus all \
-v $(pwd)/dataset:/workspace/dataset \
-v $(pwd)/src:/workspace/src \
-v $(pwd)/output:/workspace/output \
--name pytorch-lab \
pytorch-lab \
/bin/bash