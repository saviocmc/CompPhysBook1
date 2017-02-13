#!/bin/bash
latex IntroductoryBook.tex
for auxfile in chap*.aux
do
    bibtex `basename $auxfile .aux`
done
latex IntroductoryBook.tex
latex IntroductoryBook.tex
dvips -o IntroductoryBook.ps IntroductoryBook.dvi
ps2pdf IntroductoryBook.ps
