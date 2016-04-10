FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>

RUN pacman -Syu --noconfirm unbound

ADD root.hints unbound.conf /etc/unbound/

EXPOSE 53/udp

CMD /usr/bin/unbound; /bin/bash -i

