#!/bin/bash

## En local ->
## pig -x local -

## en dataproc...

## copy data
gsutil cp small_page_links.nt gs://lava-chicken-bucket/

## copy pig code
gsutil cp pagerank-notype.py gs://lava-chicken-bucket/

## Clean out directory
gsutil rm -rf gs://lava-chicken-bucket/out


## create the cluster #TODO change num-worker (1, 2 & 4)
gcloud dataproc clusters create cluster-a35a --enable-component-gateway --region europe-west1 --zone europe-west1-c --master-machine-type n1-standard-4 --master-boot-disk-size 500 --num-workers 2 --worker-machine-type n1-standard-4 --worker-boot-disk-size 500 --image-version 2.0-debian10 --project projet-pascal-de-ouf


## run
## (suppose that out directory is empty !!)
gcloud dataproc jobs submit pyspark --region europe-west1 --cluster cluster-a35a gs://lava-chicken-bucket/pagerank-notype.py  -- gs://lava-chicken-bucket/small_page_links.nt 3

## access results
gsutil cat gs://lava-chicken-bucket/out/pagerank_data_10/part-r-00000

## delete cluster...
gcloud dataproc clusters delete cluster-a35a --region europe-west1

