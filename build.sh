#!/bin/bash

if [[ ! -z "$1" ]]; then
  TEX_NAME=agile_$1
else
  TEX_NAME=agile_si
fi

pdflatex -interaction=nonstopmode $TEX_NAME.tex

bibtex $TEX_NAME
pdflatex -interaction=nonstopmode $TEX_NAME.tex


