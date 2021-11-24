# debian-scripts

## Scripts for automated installation and configuration of a Debian GNU/Linux.

These scripts are intended to quickly setup VMs using a debian live boot cd https://www.debian.org/CD/live/ (choose *standard* for no UI).

The install is done using debootstrap and requires no user input.

```
chmod 744 configure/*.sh
chmod 744 install/*.sh
cd install
./0_install.sh
```

If installing over an existing install the `-wipe` parameter will clean up the existing partitions /dev/sda1 and /dev/sda2.

```
./0_install.sh -wipe
```

**NOTE: The drive /dev/sda will be formated.**

## Scripts for configuration of a Debian GNU/Linux.

These scripts are used by the install script within a chroot environment but can also be used to configure an existing system.

```
chmod 744 configure/*.sh
cd configure
./0_configure.sh
```