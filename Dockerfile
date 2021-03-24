# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
FROM gcc:latest

# These commands copy your files into the specified directory in the image
# and set that as the working location
COPY . /usr/src/dokertest1
WORKDIR /usr/src/dockertest1

# This command compiles your app using GCC, adjust for your source code
RUN g++ -o Test Test.cpp

# This command runs your application, comment out this line to compile only
CMD ["./Test"]

LABEL Name=test Version=0.0.1
