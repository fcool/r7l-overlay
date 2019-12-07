# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_PV="${PV/rc/RC}"

USE_PHP="php5-6 php7-1 php7-2 php7-3"

inherit php-ext-pecl-r3

KEYWORDS="amd64 x86"

PHP_EXT_NAME="snappy"

DESCRIPTION="PHP wrapper for snappy"
HOMEPAGE="https://github.com/kjdev/php-ext-snappy"
LICENSE="PHP-3"
SLOT="0"

SRC_URI="https://github.com/kjdev/php-ext-snappy/archive/${PV}.tar.gz -> ${PV}.tar.gz"
S="${WORKDIR}/php-ext-snappy-${PV}"
PHP_EXT_S="${S}"

DEPEND="app-arch/snappy"
RDEPEND="${DEPEND}"

PHP_EXT_ECONF_ARGS="--with-snappy-includedir=/usr"
