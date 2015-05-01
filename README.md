## Testing & Development

Install packages:
- plymouth-theme-script
- plymouth-x11

Hack files installed by package plymouth-theme-script. 
Alternatively, install any other plymouth-theme-* 

Testing procedure:
- sudo plymouthd
- sudo plymouth show-splash
- sudo plymouth message --text="Hello world"
- sudo plymouth quit

## Using theme in Production

### Installation: 

- apt-get install plymouth plymouth-label
- copy "ponyash" directory to /lib/plymouth/themes
- sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/ponyash/cms.plymouth 100
- sudo update-alternatives --set default.plymouth /lib/plymouth/themes/ponyash/cms.plymouth
- sudo update-initramfs -u

### Usage:

Check the daemon is running:
- sudo plymouth --ping && echo plymouth is running || echo plymouth NOT running

Send text message to plymouth:
- sudo plymouth message --text="Не выключайте и не перезагружайте компьютер!"

Citymobil theme can show up to 8 lines of text on boot up / shutdown screens.
