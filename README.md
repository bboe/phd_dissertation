# Organization

For clear organization, this project contains a few directories:

__chapN/__

These folders contain the contents of a particular chapter.

__resources/__

This folder contains the LaTeX2e style for the paper, as well as the bibtex
file.

__sections/__

Individual sections of the paper should be given a decscriptive name and placed
in this directory. Following this pattern helps to avoid the "which tex file
should I build" problem.


# Building the paper

### Dependency Installation

Prior to building the paper certain dependencies must be installed. Here are
some instructions for fullfilling those dependencies on select systems:

__Ubuntu 12.04__

Install the dependencies by running the following:

    sudo apt-get install rubber texlive-fonts-recommended

__OS X Snow Leopard +__

Instructions pending...


### Building the dissertation

A makefile is provided with the project thus building the paper is as simple
as:

    make

The resulting `dissertation.pdf` is the finished product.

### Cleaning up

To remove any temporary build files simply run:

    make clean
