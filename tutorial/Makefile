MDFLAGS=markdown+smart+link_attributes+multiline_tables+pipe_tables+definition_lists+backtick_code_blocks+fenced_code_attributes+implicit_figures+tex_math_dollars+header_attributes
CSS=../style.css
HTMLINCLUDE=../fonts.html
FOO=bla

.PHONY: all
all: build

.PHONY: build
build:
	@for pg in $(shell ls *.md); do\
		echo $${pg}; \
		pandoc -s --css=$(CSS) -H $(HTMLINCLUDE) \
		--from $(MDFLAGS) -t html \
		--toc \
		-o $${pg%.*}.html $${pg};\
		done

.PHONY: standalone
standalone:
	@for pg in $(shell ls *.md); do\
		echo $${pg}; \
		pandoc -s --css=$(CSS) -H $(HTMLINCLUDE) \
		--from $(MDFLAGS) -t html \
		--toc \
		--self-contained \
		-o $${pg%.*}.html $${pg};\
		done

.PHONY: pdf
pdf: standalone
	@for pg in $(shell ls *.html); do\
		html2pdf $${pg};\
	done

.PHONY: clean
clean:
	rm *.html


.PHONY: images
images:
	mkdir -p ico
	cp ../../HUD/minimap_svn/*.dds ico/
	pic2png ico/*.dds
	rm ico/*.dds
