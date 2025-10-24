# NITM Internship Report - LaTeX Guide

This directory contains the LaTeX source for the NITM Industrial Training Report.

## Files

- `NITM-Internship-Report-Utsav-Balar.tex` - Main LaTeX source file
- `Makefile` - Build automation
- `README-LATEX.md` - This file

## Prerequisites

You need a LaTeX distribution installed on your system:

### Linux (Debian/Ubuntu)
```bash
sudo apt update
sudo apt install texlive-full
```

### MacOS
```bash
brew install --cask mactex
```

Or download from: https://www.tug.org/mactex/

### Windows
Download and install MiKTeX: https://miktex.org/download

## Quick Start

### Using Makefile (Recommended)

```bash
# Compile the report
make

# View the generated PDF
make view

# Clean auxiliary files
make clean

# Clean everything including PDF
make cleanall
```

### Manual Compilation

```bash
# Run pdflatex twice (for table of contents)
pdflatex NITM-Internship-Report-Utsav-Balar.tex
pdflatex NITM-Internship-Report-Utsav-Balar.tex
```

This will generate: `NITM-Internship-Report-Utsav-Balar.pdf`

## Adding Images

The LaTeX file includes placeholder comments for images. To add images:

1. Place your image files (PNG, JPG, or PDF) in the same directory
2. Uncomment and modify the `\includegraphics` lines in the .tex file

Example locations for images:

### NITM Logo (Title Page)
```latex
% Line ~76 in the .tex file
\includegraphics[width=3cm]{nitm_logo.png}
```

### Company/Product Images (Chapter 1)
```latex
% After section 1.3 Products and Services
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{distiller_products.png}
    \caption{Pamir AI's Distiller Product Line}
\end{figure}
```

### Technical Diagrams (Chapter 3)
```latex
% SAM Protocol diagram
\begin{figure}[h]
    \centering
    \includegraphics[width=0.7\textwidth]{sam_protocol_diagram.png}
    \caption{SAM Protocol Communication Flow}
\end{figure}
```

## Customization

### Fonts
The document uses Times-like font (`mathptmx` package). To change:
- Comment out `\usepackage{mathptmx}` for default LaTeX font
- Or use `\usepackage{helvet}` for Helvetica-like font

### Margins
Adjust in line 7:
```latex
\usepackage[margin=1in]{geometry}
```

### Line Spacing
Adjust in line 34:
```latex
\onehalfspacing  % Change to \doublespacing or \singlespacing
```

## Troubleshooting

### Missing Packages
If you get "package not found" errors, install the specific package:

```bash
# Debian/Ubuntu
sudo apt install texlive-<package-name>

# Or install the complete distribution
sudo apt install texlive-full
```

### Compilation Errors
- Check for special characters that need escaping: `& % $ # _ { } ~ ^`
- Make sure to run pdflatex twice for table of contents to appear
- Check the .log file for detailed error messages

### PDF Not Updating
```bash
# Clean and rebuild
make cleanall
make
```

## Output

The final PDF will be approximately 15-20 pages with:
- Professional formatting (12pt, Times font, 1.5 spacing)
- Roman numerals (i, ii, iii) for front matter
- Arabic numerals (1, 2, 3) for main chapters
- Clickable table of contents
- Signature blocks in certificate pages

## Contact

For issues with the LaTeX template, contact:
- Utsav Balar (t24cs003@nitm.ac.in)
