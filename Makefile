all: index.pot
.PHONY: all

index.pot: index.html
	html2po --pot $< $@
