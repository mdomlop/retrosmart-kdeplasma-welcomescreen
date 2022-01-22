# Maintainer: Manuel Domínguez López
# <mdomlop at gmail dot com>
# @mdomlop at telegram

_pkgver_year=2019
_pkgver_month=12
_pkgver_day=18

pkgname=retrosmart-kdeplasma-welcomescreen
pkgver=1.1
pkgrel=1
pkgdesc='A retrosmart look welcome screen for KDE Plasma.'
url=https://github.com/mdomlop/$pkgname
source=()
license=('GPL3')
optdepends=('xcursor-retrosmart: The corresponding X11 cursor theme'
            'retrosmart-aurorae-themes: The corresponding Aurorae themes'
            'retrosmart-icon-theme: The corresponding icon theme'
            'retrosmart-xfwm4-themes: The corresponding themes for XFwm4'
            'retrosmart-openbox-themes: The corresponding themes for Openbox')
arch=('any')
group=('retrosmart')
changelog=ChangeLog

build() {
    cd "$startdir"
    make
    }

package() {
    cd "$startdir"
    make install DESTDIR=$pkgdir
}
