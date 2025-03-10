WORKDIR=/app/

docker run --gpus all --rm -it \
--mount type=bind,src=./,dst=${WORKDIR}/DynamicDet/ \
--mount type=bind,src=${HOME}/dev/Datasets/,dst=${WORKDIR}/DynamicDet/dataset/ \
--detach \
dynamicdet:latest 