# Author: Luke Yang

FROM jupyter/scipy-notebook:85f615d5cafa

RUN apt-get update

RUN apt-get install r-base r-base-dev -y 

RUN Rscript -e "install.packages('cowsay')"

RUN pip install pandas==1.5.0
