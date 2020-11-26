MDFLAGS=markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
PAGETITLE="FH2 Maps"
CSS=../style.css
HTMLINCLUDE=../fonts.html
MINIMAPS_REPO=../../minimaps

PVIEWER = zathura
PBROWSER = vimb
OFFICE = abiword

.PHONY: help
help:
	@echo "specify a target"

.PHONY: all
all: copy index maps

.PHONY: copy
copy:
	mkdir -p img
	mkdir -p img/ico
	cp $(MINIMAPS_REPO)/pages/*.md ./
	cp $(MINIMAPS_REPO)/pages/img/*.webp img/
	cp $(MINIMAPS_REPO)/data/img/*.webp img/ico

.PHONY: index
index:
	pandoc -s --metadata title=$(PAGETITLE) \
		--css=$(CSS) -H $(HTMLINCLUDE)  --from $(MDFLAGS) -t html \
		-o index.html templ/leg.md templ/body.md

.PHONY: maps
maps:
	@for pg in $(shell ls *.md); do\
		echo $${pg}; \
		pandoc -s --css=$(CSS) -H $(HTMLINCLUDE) --toc \
			--from $(MDFLAGS) -t html -o $${pg%.*}.html $${pg};\
		done

.PHONY: clean
clean:
	rm *.html
	rm -f img/*.webp
