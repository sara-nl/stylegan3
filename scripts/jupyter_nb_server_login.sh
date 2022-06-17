#!/bin/bash

# Run a Jupyter notebook server on the login node

module load 2021
module load JupyterHub/1.4.1-GCCcore-10.3.0

# Choose random port and print instructions to connect
PORT=`shuf -i 5000-5999 -n 1`
  
echo "Selected port is: " $PORT
echo
echo "To connect to the notebook type the following command from your local terminal:"
echo "ssh -N -L${PORT}:localhost:${PORT} ${USER}@$(hostname)-pub.snellius.surf.nl"
  
jupyter notebook --no-browser --port $PORT
