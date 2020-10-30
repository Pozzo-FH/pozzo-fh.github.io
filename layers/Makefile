.PHONY: all
all: index

.PHONY: index
index:
	pandoc -s --metadata title="Player Thresholds" -H ../fonts.html --css=../style.css --from markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes --toc -t html -o index.html index.md

.PHONY: clean
clean:
	rm *.html
