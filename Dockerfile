FROM ubuntu:latest

RUN touch /var/mail/ubuntu && chown ubuntu /var/mail/ubuntu && userdel -r ubuntu

RUN apt update

RUN apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 derek

RUN usermod -aG sudo derek

RUN service ssh start

RUN  echo 'derek:password' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
