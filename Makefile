.PHONY: help
help:
	@echo "targets: docs api maps"

.PHONY: docs
docs:
	cp ../fh2ad/doc/guide.md fh2ad.md
	pandoc --from markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes \
		-s --standalone --self-contained --katex \
		--toc --metadata title="FH2AD User Manual" \
		-t html5 --css=style.css fh2ad.md -o fh2ad.html

.PHONY: api
api:
	mkdir -p api
	rm -rf api/*
	cp -r ../fh2ad/doc/_build/html/* api/

.PHONY: maps
maps:
	$(MAKE) -C maps
