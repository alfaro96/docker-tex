FROM debian:jessie-slim

# Update the repositories
RUN apt-get update

# Install "TeX"
RUN apt-get install -y texlive-full chktex

# Define the username
ARG USERNAME=tex

# Add the user
RUN useradd -ms /bin/bash $USERNAME
USER $USERNAME
RUN mkdir -p /home/$USERNAME/workspace
WORKDIR /home/$USERNAME/workspace

# Set the "HOME" environment variable
# to know the path to the user home
ENV HOME /home/$USERNAME

# Compile the main file
CMD latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $FILE
