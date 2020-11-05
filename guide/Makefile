MDFLAGS=markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
PAGETITLE="FH2 Guide"
CSS=../style.css
HTMLINCLUDE=../fonts.html

MAIN=index

PVIEWER = zathura
PBROWSER = vimb
OFFICE = abiword

.PHONY: all
all: html

.PHONY: html
html:
	pandoc -s --metadata title=$(PAGETITLE) \
		--css=$(CSS) -H $(HTMLINCLUDE) --toc \
		--from $(MDFLAGS) -t html -o $(MAIN).html $(MAIN).md
.PHONY: clean
clean:
	rm *.html

.PHONY: view
view: html
	$(PBROWSER) $(MAIN).html 2> /dev/null & 
