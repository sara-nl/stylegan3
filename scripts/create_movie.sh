#!/bin/bash

module load FFmpeg/4.3.2-GCCcore-10.3.0

RUN=00012-stylegan3-r-chestxray-gpus4-batch32-gamma32
RUNDIR=~/NKI/stylegan3/runs/${RUN}

cd ${RUNDIR}

ffmpeg -framerate 12 -pattern_type glob -i 'fakes*.png' -vf format=yuv420p ${RUN}.mp4
