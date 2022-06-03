module load 2021
module load PyTorch/1.11.0-foss-2021a-CUDA-11.6.0
module load matplotlib/3.4.2-foss-2021a
module load tqdm/4.61.2-GCCcore-10.3.0

virtualenv --system-site-packages ~/.virtualenvs/NKI_STYLEGAN3
source ~/.virtualenvs/NKI_STYLEGAN3

pip install pyspng
pip install click
pip install imageio
pip install imgui
pip install glfw
pip install pyopengl
pip install imageio-ffmpeg
