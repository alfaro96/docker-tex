FROM debian:buster-slim

# Install system requirements
RUN apt-get update
RUN apt-get install -y texlive-full chktex git

# Run the container in user mode
ARG USERNAME=tex
ENV HOME /home/$USERNAME
RUN useradd -ms /bin/bash $USERNAME
USER $USERNAME

# Move to the workspace
RUN mkdir -p $HOME/workspace
WORKDIR $HOME/workspace

CMD latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $FILE
