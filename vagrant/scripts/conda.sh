#!/usr/bin/env bash
echo "Installing Anaconda"


if [ ! -d /opt/anaconda ]; then
    wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O /opt/miniconda.sh
    bash /opt/miniconda.sh -b -p /opt/anaconda/
    echo "export PATH=/opt/anaconda/bin/:$PATH" | sudo tee -a /etc/bashrc
    echo "export PATH=/opt/anaconda/bin/:$PATH" | sudo tee -a /etc/environment
    /opt/anaconda/bin/conda config --set always_yes yes
    /opt/anaconda/bin/conda config --add create_default_packages pip --add create_default_packages ipython
    /opt/anaconda/bin/conda update conda --yes
fi

/opt/anaconda/bin/conda install numpy
/opt/anaconda/bin/conda install ipython pip
/opt/anaconda/bin/conda install gdal --yes
/opt/anaconda/bin/conda install django --yes
/opt/anaconda/bin/conda install netcdf4 --yes
/opt/anaconda/bin/pip install django-dajaxice


