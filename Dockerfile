FROM continuumio/miniconda3
WORKDIR /stuff
RUN conda install \
    xarray \
    netCDF4 \
    bottleneck \
    numpy \
    pandas \
    matplotlib \
    jupyterlab
CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]