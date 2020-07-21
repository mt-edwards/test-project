# latest ubuntu image
FROM ubuntu:latest

# install git
apt install -y git

# clone git repo
RUN git clone https://github.com/mt-edwards/test-project

# install R

# install renv
RUN R -e 'install.packages("renv", repos = "https://cran.ma.imperial.ac.uk/")'

# restore environment
RUN R -e 'setwd("./test-project"); renv::restore()'