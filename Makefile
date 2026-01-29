# Compile any .adoc file to PDF/HTML/DOCX
# Usage: make summary-pdf FILE=sg2/meetings/2026-01-23/summary.adoc
#        make summary-html FILE=sg2/meetings/2026-01-23/summary.adoc
#        make summary-docx FILE=sg2/meetings/2026-01-23/summary.adoc
FILE ?=
OUTPUT_DIR = $(dir $(FILE))
OUTPUT_BASENAME = $(basename $(notdir $(FILE)))

summary-pdf:
ifndef FILE
	$(error FILE is required. Usage: make summary-pdf FILE=path/to/file.adoc)
endif
	asciidoctor --trace -r asciidoctor-pdf -b pdf -o $(OUTPUT_DIR)$(OUTPUT_BASENAME).pdf $(FILE)

summary-html:
ifndef FILE
	$(error FILE is required. Usage: make summary-html FILE=path/to/file.adoc)
endif
	asciidoctor --trace -o $(OUTPUT_DIR)$(OUTPUT_BASENAME).html $(FILE)

summary-docx:
ifndef FILE
	$(error FILE is required. Usage: make summary-docx FILE=path/to/file.adoc)
endif
	asciidoctor --trace --backend docbook --out-file - $(FILE) | pandoc --from docbook --to docx --reference-doc ET-IM-template.docx --metadata date= --output $(OUTPUT_DIR)$(OUTPUT_BASENAME).docx

clean:
	rm -f ${FILE_BASENAME}.{html,pdf,docx}

.PHONY: html pdf docx linkcheck clean summary-pdf summary-html summary-docx

