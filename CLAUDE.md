# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

LaTeX-based internship report for NITM (Narula Institute of Technology, Midnapore). The report documents an internship at Pamir AI focused on Edge AI Hardware and Software Development. This is a single LaTeX document compiled to PDF.

## Build System

### Primary Build Commands

```bash
# Compile the report (runs pdflatex twice for TOC)
make

# View the generated PDF
make view

# Clean auxiliary files (.aux, .log, .out, .toc)
make clean

# Clean everything including PDF
make cleanall
```

### Manual Compilation
If the Makefile is unavailable:
```bash
pdflatex NITM-Internship-Report-Utsav-Balar.tex
pdflatex NITM-Internship-Report-Utsav-Balar.tex  # Second pass for TOC
```

## Repository Structure

- `NITM-Internship-Report-Utsav-Balar.tex` - Main LaTeX source file (~700 lines)
- `Makefile` - Build automation
- `README.md` - Setup and usage guide
- `*.png` - Image assets (logos, diagrams)
- `*.svg` - Vector graphics (Distiller product images)
- `*.pdf` - Generated output
- `.claude/` - Claude Code configuration

## LaTeX Document Architecture

The document uses the `report` document class with custom formatting:

- **Page Layout**: A4 paper, 12pt font, 1-inch margins, 1.5 line spacing
- **Font**: Times-like font via `mathptmx` package
- **Pagination**: Roman numerals (i, ii, iii) for front matter, Arabic (1, 2, 3) for main chapters
- **Hyperlinks**: Enabled via `hyperref` for clickable table of contents

### Document Structure
1. Front Matter (roman numerals):
   - Title page with NITM logo
   - Certificate from the Company (signed by CTO)
   - Certificate from the Institute (signed by Faculty Supervisor)
   - Acknowledgement
   - Abstract
   - Table of Contents

2. Main Chapters (arabic numerals):
   - Chapter 1: Introduction (Company overview, products, organization)
   - Chapter 2: Internship Details (Objectives, duration, methodology, role)
   - Chapter 3: Work Done During Internship (BHV hardware, SAM protocol, WiFi provisioning, SDK development)
   - Chapter 4: Learning Outcomes and Challenges (Technical skills, problem-solving, soft skills)
   - Chapter 5: Conclusion (Experience, achievements, future implications)

## Working with Images

Images are referenced in the LaTeX source and stored in the repository root:

**Currently used in the document:**
- `nitm_logo.png` - NITM institute logo on title page (NITM-Internship-Report-Utsav-Balar.tex:59)
- `pamirai_logo.png` - Pamir AI company logo (NITM-Internship-Report-Utsav-Balar.tex:289)
- `distiller_alpha.svg` - Distiller Alpha product diagram (NITM-Internship-Report-Utsav-Balar.tex:319)
- `distiller_bhv.svg` - Distiller BHV product diagram (NITM-Internship-Report-Utsav-Balar.tex:327)
- `distiller_air.svg` - Distiller Air product diagram (NITM-Internship-Report-Utsav-Balar.tex:335)
- `bhv_hardware_architecture.png` - BHV hardware architecture diagram (NITM-Internship-Report-Utsav-Balar.tex:451)
- `sam-protocol-flow.png` - SAM protocol flow diagram (NITM-Internship-Report-Utsav-Balar.tex:481)
- `wifi_provisioning_flow.png` - WiFi provisioning flow diagram (NITM-Internship-Report-Utsav-Balar.tex:531)

**Image formats:**
- Use PNG for logos and raster graphics
- Use SVG for vector graphics (product diagrams, flowcharts)
- LaTeX supports both formats natively via `graphicx` package

When adding new images, place them in the repository root and reference with:
```latex
\includegraphics[width=0.8\textwidth]{filename.png}
# or for SVG
\includegraphics[width=0.7\textwidth]{filename.svg}
```

## Prerequisites

Requires a LaTeX distribution:
- **Linux**: `sudo apt install texlive-full`
- **macOS**: `brew install --cask mactex`
- **Windows**: Install MiKTeX

## Common Issues

- **TOC not updating**: Run pdflatex twice or use `make cleanall && make`
- **Missing packages**: Install `texlive-full` or the specific missing package
- **Special characters**: Must escape: `& % $ # _ { } ~ ^`
- **Image not found**: Ensure image files are in repository root (same directory as .tex file)
- **Compilation errors**: Check `.log` file for detailed error messages

## LaTeX Best Practices for this Document

- **Two-pass compilation required**: Table of contents, figure references, and hyperlinks need two pdflatex passes
- **Certificate pages**: Have signature blocks with underlined spaces for physical signatures
- **Page numbering**: Automatically switches from roman (i, ii, iii) to arabic (1, 2, 3) at first chapter
- **Figures**: All figures use `[h]` placement (here) for precise positioning
- **Line references**: Format is `filename:line_number` (e.g., NITM-Internship-Report-Utsav-Balar.tex:59)
