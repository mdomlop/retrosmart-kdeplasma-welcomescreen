PREFIX = '/usr'
DESTDIR = ''
THEMENAME = com.github.mdomlop.retrosmart

default:
	mkdir $(THEMENAME)
	cp -r src/* LICENSE AUTHORS $(THEMENAME)/

clean:
	rm -rf $(THEMENAME) *.tar.xz

install:
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)
	cp -r src/* $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)/
	chmod -R u+rwX,go+rX $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)/

uninstall:
	rm -rf  $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/$(THEMENAME)/

user_install:
	mkdir -p ~/.local/share/plasma/look-and-feel/$(THEMENAME)/
	cp -r src/* ~/.local/share/plasma/look-and-feel/$(THEMENAME)/

user_uninstall:
	rm -rf ~/.local/share/plasma/look-and-feel/$(THEMENAME)/

arch_pkg:
	makepkg -d

opendesktop: retrosmart-kdeplasma-welcomescreen.tar.xz
retrosmart-kdeplasma-welcomescreen.tar.xz: clean default
	tar cJf $@ $(THEMENAME)
