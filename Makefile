################################################################################
#	Makefile for smsExtractor.py
#
#	Technically, no 'making' occurs, since it's just a python script, but
#	let us not quibble over trivialities such as these.
################################################################################
SRCFILE=smsExtractor.py
VERSION=1.3
PREFIX=/usr
SRC=src
DESTDIR=$(PREFIX)
DESTFILE=smsExtractor
#DOC=doc
#MANPATH=$(PREFIX)/share/man/man1
DOCPATH=$(PREFIX)/doc/smsExtractor-$(VERSION)

install:
	install -D -g 0 -o 0 -m 0755 $(SRC)/$(SRCFILE) $(DESTDIR)/bin/$(DESTFILE)
	install -v -D -g 0 -o 0 -m 0644 LICENSE $(DOCPATH)/LICENSE
	install -v -D -g 0 -o 0 -m 0644 README $(DOCPATH)/README
	install -v -D -g 0 -o 0 -m 0644 CHANGES $(DOCPATH)/CHANGES

uninstall:
	rm -f $(DESTDIR)/bin/$(DESTFILE)
	rm -f $(DOCPATH)/LICENSE
	rm -f $(DOCPATH)/README
	rm -f $(DOCPATH)/CHANGES
	rmdir $(DOCPATH)
