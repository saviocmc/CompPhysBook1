#!/bin/bash
latex book.tex
for auxfile in chap*.aux
do
    bibtex `basename $auxfile .aux`
done
latex book.tex
latex book.tex
dvips -o book.ps book.dvi
ps2pdf book.ps
