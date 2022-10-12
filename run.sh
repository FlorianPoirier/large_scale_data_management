#!/bin/bash

## En local ->
## pig -x local -

## en dataproc...


## create the cluster TODO change num-worker (1, 2 & 4)
gcloud dataproc clusters create cluster-a35a --enable-component-gateway --region europe-west1 --zone europe-west1-c --master-machine-type n1-standard-4 --master-boot-disk-size 500 --num-workers 2 --worker-machine-type n1-standard-4 --worker-boot-disk-size 500 --image-version 2.0-debian10 --project projet-pascal-de-ouf

## copy data
gsutil cp large_scale_data_management/small_page_links.nt gs://page-rank-bucket/

## copy pig code
gsutil cp dataproc.py gs://page-rank-bucket/

## Clean out directory
gsutil rm -rf gs://page-rank-bucket/out


## run
## (suppose that out directory is empty !!)
gcloud dataproc jobs submit pig --region europe-west1 --cluster cluster-a35a -f gs://page-rank-bucket/dataproc.py

## access results
gsutil cat gs://page-rank-bucket/out/pagerank_data_10/part-r-00000

## delete cluster...
gcloud dataproc clusters delete cluster-a35a --region europe-west1

