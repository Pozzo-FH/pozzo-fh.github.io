FH2PARSE_REPO=../../fh2parse

.PHONY: all
all: copy index

.PHONY: copy
copy:
	mkdir -p img
	mkdir -p img/ico
	cp $(FH2PARSE_REPO)/pages/*.html ./
	cp $(FH2PARSE_REPO)/pages/img/*.webp img/
	cp $(FH2PARSE_REPO)/data/img/*.webp img/ico

.PHONY: index
index:
	find . -maxdepth 1 -name '*.html' -and -not -name 'index.html' -print | sort | grep "^./[[:lower:]]" | awk '$$0="- ["$$0"]("$$0")"' | pandoc -f markdown -t html > templ/BODY.html
	pandoc -f markdown -t html -o templ/LEGEND.html templ/leg.md
	cat templ/HEAD.html templ/LEGEND.html templ/BODY.html templ/TAIL.html > index.html

.PHONY: clean
clean:
	rm *.html
	rm -f img/*.webp
