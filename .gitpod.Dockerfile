FROM gitpod/workspace-full:latest

USER root
RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev pandoc texlive texlive-latex-extra tcl chromium-browser

# Install python environment
RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
