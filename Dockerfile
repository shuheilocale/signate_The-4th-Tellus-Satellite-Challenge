FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel

# Install required libraries
RUN conda config --add channels pytorch \
 && conda config --append channels conda-forge \
 && conda update --all --yes --quiet \
 && conda install --yes --quiet \
    ipywidgets \
    jupyterlab \
    matplotlib \
    nodejs \
    opencv \
    pandas \
    scikit-learn \
    seaborn \
    sympy \
 && conda clean --all -f -y

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN rm -rf requirements.txt

# Install jupyter extensions
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension \
 && jupyter labextension install @jupyter-widgets/jupyterlab-manager

COPY jupyter_notebook_config.py /root/.jupyter/
COPY signate.json /root/.signate/
