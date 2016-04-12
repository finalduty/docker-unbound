FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>
EXPOSE 53/udp
CMD /usr/bin/unbound; /bin/bash; 

RUN pacman -S --noconfirm unbound >/dev/null; pacman -Scc --noconfirm &>/dev/null
ADD root.hints unbound.conf /etc/unbound/



