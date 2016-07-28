Chainer Fast Neuralstyle in Docker
===

Builds the [Chainer Fast Neuralstyle project](https://github.com/yusuketomoto/chainer-fast-neuralstyle)
in a docker container for easy use.

Three env vars are used to pass the input and output image paths and the model to use. Mount a host volumn
to use images or models not included.

`docker build -t chainer ./ && docker run --rm -e 'INPUT=/tmp/input.jpg' -e 'OUTPUT=/tmp/dream.png' -e 'MODEL=models/seurat.model' -v ./img/:/tmp/ chainer`
