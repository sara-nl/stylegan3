#!/bin/bash

# Start tensorboard on login node
source load_env.sh

PORT=`shuf -i 5000-5999 -n 1`

echo "Selected port is: " $PORT
echo
echo "To connect to the tensorboard instance type the following command from your local terminal:"
echo "ssh -N -L${PORT}:localhost:${PORT} ${USER}@$(hostname)-pub.snellius.surf.nl"

tensorboard --logdir=runs --port=$PORT
