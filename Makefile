MDFLAGS=markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
PAGETITLE="FH2 Guide"
CSS=style.css
HTMLINCLUDE=fonts.html

MAIN=index

PVIEWER = zathura
PBROWSER = surf
OFFICE = abiword

.PHONY: help
help:
	@echo "targets: all docs maps main view"

.PHONY: all
all: docs maps main

.PHONY: docs
docs:
	cp ../admin/doc/guide.md admin.md
	pandoc --from $(MDFLAGS) \
		-t html5 --css=$(CSS) -H $(HTMLINCLUDE) \
		--metadata title="FH2 Admin Manual" \
		admin.md -o admin.html

.PHONY: maps
maps:
	$(MAKE) -C maps all

.PHONY: tutorial
tutorial:
	$(MAKE) -C tutorial all

.PHONY: main
main:
	pandoc -s --css=$(CSS) -H $(HTMLINCLUDE) \
		--from $(MDFLAGS)  -t html -o $(MAIN).html $(MAIN).md

.PHONY: view
view: main
	$(PBROWSER) $(MAIN).html 2> /dev/null & 


.PHONY: clean
clean:
	rm $(MAIN).html
