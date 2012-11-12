#!/bin/bash

TEX_NAME=agile_si

pdflatex -interaction=nonstopmode $TEX_NAME.tex

bibtex $TEX_NAME
pdflatex -interaction=nonstopmode $TEX_NAME.tex


