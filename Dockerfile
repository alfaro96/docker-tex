FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y texlive-full chktex git

# Running the container in root mode is
# not recommended for security purposes
ARG USERNAME=tex
ENV HOME /home/$USERNAME
RUN useradd -ms /bin/bash $USERNAME
USER $USERNAME
RUN mkdir -p $HOME/workspace
WORKDIR $HOME/workspace

CMD latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $FILE
