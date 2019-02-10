# Maintainer: Thorsten Töpper <atsutane-aur@freethoughts.de>
# Contributor: William Giokas <1007380@gmail.com>

pkgname=i3status-git
pkgver=2.12.r83.g49461ac
pkgrel=1
pkgdesc='Generates status bar to use with dzen2 or wmii'
arch=('i686' 'x86_64')
url='http://i3wm.org/i3status/'
license=('BSD')
groups=('i3-vcs')
depends=('confuse' 'alsa-lib' 'yajl' 'libpulse' 'libnl' 'xmlto')
makedepends=('git' 'pkgconfig' 'asciidoc')
options=('docs')
install=i3status.install
conflicts=('i3status')
provides=('i3status')
source=(git+https://github.com/i3/i3status)
sha1sums=('SKIP')

_gitname='i3status'

pkgver() {
  cd "$srcdir/$_gitname"
  git describe --tags | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

build() {
  cd "$srcdir/$_gitname"
  autoreconf -fi
  ./configure
  make
}

package() {
  cd "$srcdir/$_gitname"
  make DESTDIR="$pkgdir" install

  install -Dm644 LICENSE \
    ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE

  make clean
}

# vim:set ts=2 sw=2 et:
