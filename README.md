Apache Zeppelin on Docker
==========


This repository contains a Docker file to build a Docker image with Apache Zeppelin. This Docker image is inspired by  [Hadoop Spark](https://github.com/sequenceiq/docker-spark) image, available at the SequenceIQ [GitHub](https://github.com/sequenceiq) page.

##Pull the image from Docker Repository
```
docker pull gchevalley/ahsz
```

## Building the image
```
docker build --rm -t gchevalley/ahsz:0.7.1 .
```

## Running the image
```
docker run -it -p 8080:8080 -p 8088:8088 -p 8042:8042 -p 4040:4040 -p 9000:9000 -h sandbox gchevalley/ahsz:0.7.1 bash
```

## Versions
```
Hadoop v2.7.0, Apache Spark v2.1.0, Apache Zeppelin v0.7.1 on Ubuntu 16.04
```
