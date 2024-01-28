MDFLAGS=markdown+smart+link_attributes+multiline_tables+grid_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
CSS=../style.css
HTMLINCLUDE=../fonts.html

MAIN=index

PVIEWER = zathura
PBROWSER = surf
OFFICE = abiword

.PHONY: help test
help: all

.PHONY: all
all:
	cat templ/leg.md templ/body.md > index.md
	pandoc --from $(MDFLAGS) \
		-t html5 --css=$(CSS) -H $(HTMLINCLUDE) \
		--metadata title="FH2 Asset Maps" \
		index.md -o index.html
