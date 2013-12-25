Unofficial Gentoo GNOME overlay
-------------------------------

This overlay was designed for **GNOME 3.10** development for Gentoo...

**But goes wild!** (note that I really hope that we helped EVA at least a bit)

**Current status: 3.11.2**

 - stable branch is target **Sabayon 14.01** ( https://github.com/Heather/gentoo-gnome/tree/stable )
 - master branch goes forward 3.11 -> ... and damn unstable for now
 - for `3.10` There is official gnome overlay: http://git.overlays.gentoo.org/gitweb/?p=proj/gnome.git;a=summary
 - if something is broken now or there is missing feature check this commit: https://github.com/Heather/gentoo-gnome/commit/402fb79024123a1279cd6ee99eb6578768fbf622
 - contributors are still welcome.

![](ss.png?raw=true)

NOTE
====
 - Also you can try `openrc-force` use flag if you hate systemd (currently awailable only there)
<hr/>
* For bugs use GitHub issues https://github.com/Heather/gentoo-gnome/issues?state=open
* Scripts for development available in ./scripts/
* Please use `pull --rebase` to resolve conflicts or set `branch.autosetuprebase = always`
* This overlay is also available via `layman` as `gnome-next`.
