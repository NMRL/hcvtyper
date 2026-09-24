#!/bin/bash

docker pull cvrbioinformatics/gluetools-mysql:latest
docker run --detach --name gluetools-mysql cvrbioinformatics/gluetools-mysql:latest
docker pull cvrbioinformatics/gluetools:latest
docker run --rm -it --name gluetools --link gluetools-mysql cvrbioinformatics/gluetools:latest
docker exec gluetools-mysql installGlueProject.sh ncbi_hcv_glue