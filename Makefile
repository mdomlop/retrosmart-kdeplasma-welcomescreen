PREFIX = '/usr'
DESTDIR = ''
THEMENAME = com.github.mdomlop.retrosmart

default:
	cp -r src/$(THEMENAME) src/$(THEMENAME)-unix .
	cp LICENSE AUTHORS $(THEMENAME)/
	cp LICENSE AUTHORS $(THEMENAME)-unix/

clean:
	rm -rf $(THEMENAME) $(THEMENAME)-unix *.pkg.tar.xz *.pkg.tar.zst

install: default
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/
	cp -r $(THEMENAME)/ $(THEMENAME)-unix/ $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/
	chmod -R u+rwX,go+rX $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)/ $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)-unix/

uninstall:
	rm -rf  $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)/
	rm -rf  $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)-unix/

user_install: default
	install -d -m 755 ~/.local/share/plasma/look-and-feel
	cp -r $(THEMENAME)/ $(THEMENAME)-unix/ ~/.local/share/plasma/look-and-feel/

user_uninstall:
	rm -rf ~/.local/share/plasma/look-and-feel/$(THEMENAME)/
	rm -rf ~/.local/share/plasma/look-and-feel/$(THEMENAME)-unix/

arch_pkg:
	makepkg -d

opendesktop: retrosmart-kdeplasma-welcomescreen.tar.xz
retrosmart-kdeplasma-welcomescreen.tar.xz: clean default
	tar cJf $@ $(THEMENAME)
