FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>
EXPOSE 53/udp
CMD /usr/bin/unbound; /bin/bash; 

RUN pacman -Syu --noconfirm unbound; pacman -Scc --noconfirm
ADD root.hints unbound.conf /etc/unbound/



