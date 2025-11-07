#!/bin/bash
set -e

mkdir -p ./Pdf

source venv/bin/activate

weasyprint --encoding utf-8 0.50-euro.html ./Pdf/0.50-euro.pdf
echo "0.50-euro.pdf generated"

weasyprint --encoding utf-8 1-euro.html ./Pdf/1-euro.pdf
echo "1-euro.pdf generated"

weasyprint --encoding utf-8 2-euros.html ./Pdf/2-euro.pdf
echo "2-euros.pdf generated"

weasyprint --encoding utf-8 3-euros.html ./Pdf/3-euro.pdf
echo "3-euros.pdf generated"

weasyprint --encoding utf-8 4-euros.html ./Pdf/4-euro.pdf
echo "4-euros.pdf generated"
