FROM finalduty/archlinux:daily
MAINTAINER FinalDuty <root@finalduty.me>
EXPOSE 53/udp
CMD /usr/bin/unbound; /bin/bash; 

RUN pacman -Syu --noconfirm unbound >/dev/null; pacman -Scc --noconfirm &>/dev/null
ADD root.hints unbound.conf /etc/unbound/



