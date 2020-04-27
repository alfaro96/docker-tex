FROM debian:buster-slim

# Install TeX to compile LaTeX projects, ChkTeX as a
# LaTeX semantic checker and Git for version control
RUN apt-get update
RUN apt-get install -y texlive-full chktex git

# Create a new user to avoid that the
# container is run in privileged mode
ARG USERNAME=tex
ENV HOME /home/$USERNAME
RUN useradd -ms /bin/bash $USERNAME
USER $USERNAME
RUN mkdir -p $HOME/workspace
WORKDIR $HOME/workspace

CMD latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $FILE
