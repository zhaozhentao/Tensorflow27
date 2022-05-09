FROM tensorflow/tensorflow:2.7.1-gpu-jupyter

RUN apt update

RUN apt install -y libgl1-mesa-glx graphviz

RUN python3 -m pip install --upgrade pip

RUN pip3 install -i https://mirrors.aliyun.com/pypi/simple/ \
        opencv-python~=4.5.1.48 \
        numpy~=1.19.5 \
        requests~=2.25.1 \
        pydantic~=1.7.3 \
        fastapi~=0.63.0 \
        uvicorn \
        python-multipart \
        uvloop \
        httptools \
        pillow \
        imgaug \
        pydot \
        pydotplus \
        graphviz

