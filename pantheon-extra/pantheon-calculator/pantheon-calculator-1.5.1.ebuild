# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_MIN_VERSION=0.26

inherit gnome2-utils meson vala

DESCRIPTION="A tiny, simple calculator written in GTK+ and Vala"
HOMEPAGE="https://github.com/elementary/calculator"
SRC_URI="https://github.com/elementary/calculator/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64"

LICENSE="GPL-3"
SLOT="0"
IUSE="nls"

RDEPEND="
	dev-libs/appstream
	dev-libs/glib:2
	dev-libs/granite
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}
	$(vala_depend)
	nls? ( sys-devel/gettext )
	virtual/pkgconfig
"

S=${WORKDIR}/calculator-${PV}

src_prepare() {
	eapply_user

	vala_src_prepare
}

pkg_preinst() {
	gnome2_icon_savelist
	gnome2_schemas_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}

pkg_postrm() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}
