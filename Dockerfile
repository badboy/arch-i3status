FROM archlinux/base

RUN pacman -S --refresh --sysupgrade --noconfirm && \
      pacman -S --noconfirm base-devel confuse alsa-lib yajl libpulse xmlto git asciidoc && \
      useradd -m -g wheel -s /bin/sh i3 && \
      mkdir /home/i3/src

ADD PKGBUILD /home/i3/src/PKGBUILD
ADD i3status.install /home/i3/src/i3status.install
RUN chown -R i3:wheel /home/i3/src
