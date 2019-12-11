# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
EGO_PN=github.com/mailhog/MailHog

inherit golang-vcs golang-build user

DESCRIPTION="MailHog is an email testing tool for developers"
HOMEPAGE="https://github.com/mailhog/MailHog"
LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}/src/${EGO_PN}"

pkg_setup() {
	enewgroup mailhog
	enewuser mailhog -1 -1 -1 mailhog
}

src_install() {
	newbin ${S}/MailHog mailhog
}
