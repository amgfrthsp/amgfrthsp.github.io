#!/bin/bash

cd /cv
pdflatex main.tex
rm main.aux
rm main.log
rm main.out
exit
