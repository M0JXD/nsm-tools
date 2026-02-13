# NSM Tools

## NOTE: THIS REPO IS JUST PROVISIONAL GROUNDWORK THAT MAY NOT BE CONTINUED DEPENDING WHETHER THE OFFICIAL NSM WOULD LIKE TO SUPPORT BSD SYSTEMS

NSM Tools is a repo of standalone helper tools for use with a NSM server.
They are forked from New Session Manager, which was in turn forked from Non Session Manager.

The main reasons for this fork are to:

- Split apart the helper tools from my NSM fork, JSM.
- Integrate with the existing Non* ecosystem again, using nonlib and non-FL.
- Restore NTK as a GUI option.
- Bring more options to the FLTK version in alignment with the other Non forks.
- Bring support to new platforms, starting with FreeBSD.

## Build

The build system is Xmake.

## jacker

jacker is a fork jackpatch, an NSM client to remember and setup JACK connections.
I would like to make a patchbay UI for it at somepoint.

## JSM Proxy

JSM Proxy is a utility to use clients without NSM support in a NSM session.
