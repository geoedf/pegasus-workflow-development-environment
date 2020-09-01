#!/bin/sh

cd /home/scitech/shared-data/dtfilter

hpccm --recipe recipe.hpccm --format singularity --singularity-version=3.5 > Singularity

sudo singularity build DTFilter.sif Singularity

cp DTFilter.sif /images

