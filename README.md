Apache Zeppelin on Docker
==========


This repository contains a Docker file to build a Docker image with Apache Zeppelin. This Docker image depends on  [Hadoop Spark](https://github.com/sequenceiq/docker-spark) image, available at the SequenceIQ [GitHub](https://github.com/sequenceiq) page.

##Pull the image from Docker Repository
```
docker pull gchevalley/ahsz
```

## Building the image
```
docker build --rm -t gchevalley/ahsz .
```

## Running the image
```
docker run -it -p 8080:8080 -p 8088:8088 -p 8042:8042 -p 4040:4040 -h sandbox gchevalley/ahsz bash
```

## Versions
```
Hadoop v2.6.0, Apache Spark v1.6.0, Apache Zeppelin v0.5.6 on Centos 6.5 
```
