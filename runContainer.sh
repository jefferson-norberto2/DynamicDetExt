WORKDIR=/app/

docker run --gpus all -it -d \
--mount type=bind,src=./,dst=${WORKDIR}/DynamicDetEx/ \
--mount type=bind,src=${HOME}/dev/Datasets/,dst=${WORKDIR}/DynamicDetEx/dataset/ \
--name dynamic_det \
dynamicdet:latest bash