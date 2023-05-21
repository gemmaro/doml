all: index.en.html
.PHONY: all

index.en.html: index.pot
	po2html --template index.html $< $@

index.pot: index.html
	html2po --pot $< $@
