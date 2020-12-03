CC=gcc
CFLAGS=-framework ApplicationServices -framework Carbon
SOURCES=keylogger.c
EXECUTABLE=keylogger
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

clean:
	rm $(EXECUTABLE)
