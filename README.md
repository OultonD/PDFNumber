# PDFNumber
A LaTeX and ImageMagick Script to add line numbers to any PDF.  
Based on the work in <https://tex.stackexchange.com/a/18776>

## Usage
Place your pdf in the same folder as the two scripts and rename it `Script.pdf`  
Run `sh ./findlines.sh Script` to generate the files for `NumberPDF.tex`

### Variables
Edit the following in `NumberPDF.tex` to customize your numbering:  
`\numpages=62` The total number of pages in the PDF.  
`\numberby=2` Count by 2s, or whatever number you'd like.  
`\startnumbering=2` Start numbering after n lines. Useful for skipping headers in pdfs.  
`\offset=10` Offset of numbers from left margin. Useful numbers are in the range of 0-20ish.

## Requirements
Requires [ImageMagick](https://imagemagick.org/script/download.php) commandline tools, and [LaTeX](https://www.latex-project.org/get/)
