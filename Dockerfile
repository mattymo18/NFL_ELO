#This is a Skeleton Dockerfile
FROM rocker/verse
MAINTAINER Matt Johnson <johnson.matt1818@gmail.com>

#For R
RUN R -e "install.packages('package')"