.PHONY: all
all: index

.PHONY: index
index:
	# find . -maxdepth 1 -name '*.html' -and -not -name 'index.html' -print | sort | grep "^./[[:lower:]]" | awk '$$0="- ["$$0"]("$$0")"' | pandoc -f markdown -t html > templ/BODY.html
	pandoc -s --metadata title="FH2 FAQ" --css=../style.css --from markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes --toc -t html -o index.html index.md
	# cat templ/HEAD.html BODY.html templ/TAIL.html > index.html

.PHONY: clean
clean:
	rm *.html
