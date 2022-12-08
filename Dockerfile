# Author: Luke Yang

FROM debian:jupyter/scipy-notebook:85f615d5cafa

RUN apt-get update

RUN apt-get install r-base r-base-dev -y 

RUN Rscript -e "install.packages('cowsay')"

RUN Rscript -e "install.packages('fortunes')"

RUN Rscript -e "install.packages('gapminder')"
