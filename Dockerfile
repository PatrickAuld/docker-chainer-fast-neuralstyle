FROM python:2.7.12

RUN pip install chainer Pillow

RUN git clone https://github.com/yusuketomoto/chainer-fast-neuralstyle.git
WORKDIR chainer-fast-neuralstyle/
RUN sh setup_model.sh

CMD python generate.py $INPUT -m $MODEL -o $OUTPUT
