# Maintainer: The Eupnea Project
pkgname=eupnea-utils
pkgver=0.0.4
pkgrel=1
pkgdesc="This package contains a set of tools to interact with EupneaOS/Depthboot systems. 
Not recommended for use on non-Chromebook devices."
arch=(any)
url="https://eupnea-linux.github.io/"
license=('GPL3')

prepare() {
  git clone --depth=1 https://github.com/eupnea-linux/postinstall-scripts.git --branch=move-to-packages
  git clone --depth=1 https://github.com/eupnea-linux/audio-scripts.git
}

package () {
  # Make dirs
  mkdir -p $pkgdir/etc/eupnea
  mkdir -p $pkgdir/usr/bin
  mkdir -p $pkgdir/usr/lib
    
  # Copy config files
  cp -r $srcdir/postinstall-scripts/configs/* $pkgdir/etc/eupnea
  cp -r $srcdir/audio-scripts/configs/* $pkgdir/etc/eupnea
  
  # Copy scripts
  install -Dm 755 $srcdir/postinstall-scripts/user-scripts/* $pkgdir/usr/bin
  cp $srcdir/postinstall-scripts/system-scripts/* $pkgdir/usr/lib
  install -Dm 755 $srcdir/audio-scripts/setup-audio $pkgdir/usr/bin
  # Copy functions script
  cp $srcdir/postinstall-scripts/functions.py $pkgdir/usr/lib
}
