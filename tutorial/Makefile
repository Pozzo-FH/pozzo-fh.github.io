MDFLAGS=markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
CSS=../style.css
HTMLINCLUDE=../fonts.html
FOO=bla

.PHONY: help
help:
	@echo "specify a target"

.PHONY: all
all: build

.PHONY: build
build:
	@for pg in $(shell ls *.md); do\
		echo $${pg}; \
		pandoc -s --css=$(CSS) -H $(HTMLINCLUDE) \
			--from $(MDFLAGS) -t html -o $${pg%.*}.html $${pg};\
		done

.PHONY: clean
clean:
	rm *.html

