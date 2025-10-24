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

- `NITM-Internship-Report-Utsav-Balar.tex` - Main LaTeX source file
- `Makefile` - Build automation
- `README.md` - Setup and usage guide
- `*.png` - Image assets (logos, diagrams)
- `*.pdf` - Reference documents and generated output

## LaTeX Document Architecture

The document uses the `report` document class with custom formatting:

- **Page Layout**: A4 paper, 12pt font, 1-inch margins, 1.5 line spacing
- **Font**: Times-like font via `mathptmx` package
- **Pagination**: Roman numerals (i, ii, iii) for front matter, Arabic (1, 2, 3) for main chapters
- **Hyperlinks**: Enabled via `hyperref` for clickable table of contents

### Document Structure
1. Front Matter (roman numerals):
   - Title page
   - Certificate pages (Guide/Supervisor, HoD, Principal)
   - Acknowledgment
   - Abstract
   - Table of Contents

2. Main Chapters (arabic numerals):
   - Introduction (Company overview, products, organization)
   - Internship Details (Objectives, duration, methodology, role)
   - Work Done During Internship (BHV hardware, SAM protocol, WiFi provisioning, SDK development)
   - Learning Outcomes and Challenges (Technical skills, problem-solving, soft skills)
   - Conclusion (Experience, achievements, future implications)

## Working with Images

Images are referenced in the LaTeX source and stored in the repository root:

- `pamirai_logo.png` - Company logo for title page
- `bhv_hardware_architecture.png` - Technical diagram
- `sam-protocol-flow.png` - Protocol flow diagram
- `wifi_provisioning_flow.png` - WiFi provisioning diagram

When adding new images, place them in the repository root and reference with:
```latex
\includegraphics[width=0.8\textwidth]{filename.png}
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
