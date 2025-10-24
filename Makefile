# Makefile for NITM Internship Report
# LaTeX compilation

# Variables
LATEX = pdflatex
BIBTEX = bibtex
TARGET = NITM-Internship-Report-Utsav-Balar
TEX_FILE = $(TARGET).tex
PDF_FILE = $(TARGET).pdf

# Default target
all: $(PDF_FILE)

# Compile LaTeX to PDF (run twice for TOC)
$(PDF_FILE): $(TEX_FILE)
	@echo "Compiling LaTeX document..."
	$(LATEX) $(TEX_FILE)
	@echo "Running second pass for table of contents..."
	$(LATEX) $(TEX_FILE)
	@echo "PDF generated: $(PDF_FILE)"

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.lof *.lot

# Clean everything including PDF
cleanall: clean
	@echo "Removing PDF..."
	rm -f $(PDF_FILE)

# View the PDF (Linux)
view: $(PDF_FILE)
	@echo "Opening PDF..."
	xdg-open $(PDF_FILE) 2>/dev/null || open $(PDF_FILE) 2>/dev/null || echo "Please open $(PDF_FILE) manually"

# Help
help:
	@echo "Available targets:"
	@echo "  make          - Compile the LaTeX document to PDF"
	@echo "  make clean    - Remove auxiliary files (.aux, .log, .out, .toc)"
	@echo "  make cleanall - Remove all generated files including PDF"
	@echo "  make view     - Open the generated PDF"
	@echo "  make help     - Show this help message"

.PHONY: all clean cleanall view help
