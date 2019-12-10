FROM debian:jessie-slim

# Update the repositories
RUN apt-get update

# Install the full version of TeX
# and chktex for simple linting
RUN apt-get install -y texlive-full chktex

# Define the username
ARG USERNAME=tex

# Set the HOME environment variable
# to know the path to the user home
ENV HOME /home/$USERNAME

# Add the user
RUN useradd -ms /bin/bash $USERNAME
USER $USERNAME
RUN mkdir -p $HOME/workspace
WORKDIR $HOME/workspace

# Compile the main file
CMD latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $FILE
