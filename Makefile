# notes - tiny notes handler with dmenu
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@sed "s|/usr/local|${DESTDIR}${PREFIX}|" notes > ${DESTDIR}${PREFIX}/bin/notes
	@chmod 755 ${DESTDIR}${PREFIX}/bin/notes
	@mkdir -p ${DESTDIR}${PREFIX}/share/notes
	@cp -f new ${DESTDIR}${PREFIX}/share/notes/new

.PHONY: install
