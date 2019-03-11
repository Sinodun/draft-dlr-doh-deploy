DRAFT=draft-dlr-doh-deploy
VERSION=00

XML=$(DRAFT).xml
TXT=$(DRAFT)-$(VERSION).txt

.PHONY: clean

all: $(TXT)

$(TXT): $(XML) ; xml2rfc --text -o $@ $<

clean: ; rm $(TXT)