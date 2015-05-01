all: $(CURDIR)/stamp

$(CURDIR)/stamp:
	touch $(CURDIR)/stamp

clean:
	@rm -rf $(CURDIR)/stamp

install:
	install -d $(DESTDIR)/lib/plymouth/themes/ponyash
	cp -r $(CURDIR)/ponyash/* $(DESTDIR)/lib/plymouth/themes/ponyash

uninstall:
	rm -rf $(DESTDIR)/lib/plymouth/themes/ponyash

.PHONY: all clean install uninstall
