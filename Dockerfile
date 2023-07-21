FROM consol/rocky-xfce-vnc

ENV VNC_RESOLUTION=1920x1080
# ENV VNC_PW=my-pw
ENV VNC_PASSWORDLESS=true
ENV MOZ_FAKE_NO_SANDBOX=0

USER 0

RUN yum -y install langpacks-en && \
    yum clean all

EXPOSE 5901 6901
