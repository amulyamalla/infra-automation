#!/bin/bash

		##########################################################################
		##	This script clean the docker images in docker running machine.      ##
		##	1.) Remove old images and keep only latest 5 images.	   	        ##
		##########################################################################

set -u
nexus_url=192.23.12.160:8083/
num_of_images_keep=5
for imagename in `docker images --format "{{.Repository}}" | grep "${nexus_url}" | sort | uniq`; do
    for img in `docker images --format "{{.ID}}" --filter reference="$imagename" | tail -n+$((${num_of_images_keep} + 1))`; do
        docker rmi $img
    done;
done