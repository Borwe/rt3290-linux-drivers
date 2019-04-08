## <u>The RT3290 WI-FI drivers for linux</u>

Tested on Linux Mint 19.1 running on Kernel 4.15.x, it compiles and improves performance of wi-fi signal greatly on this card.

I made this version seeing that almost nobody cared about this card, not even the original vendor Ralink which turned to Mediatek, who just care about the Windows version, and the version that comes with linux kernel out of the box has weak wifi strength as it's more generic and using the drivers of rt2800pci.

## <u>How To Install</u>

Needs the dkms package from the distro repos or manually compiled. Can be gotten in Ubuntu derivatives by simply doing:

```bash
$: sudo apt-get install dkms
```

Next steps to install.

```bash
1. 	$: git clone https://github.com/Borwe/rt3290-linux-drivers.git
2. 	$: sudo cp -r rt3290sta-2.6.0.0/ /usr/src/
3.	$: sudo dkms install -m rt3290sta -v 2.6.0.0 --force
4. 	$: sudo reboot


```

To Uninstall.

```bash
1.	$: sudo dkms remove rt3290sta/2.6.0.0 --all
2.	$: sudo reboot
```



After installation, and reboot, you might see there is no wifi, but it's just that the interface is put down on boot, you can make it auto start on start up yourself or run:

```bash
$: sudo ifconfig eno1 up
```

Here eno1 being the driver interface of the Ralink card that would be seen with a simple **iwconfig**