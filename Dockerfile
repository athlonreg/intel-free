FROM consol/rocky-xfce-vnc

ENV VNC_RESOLUTION=1920x1080
#ENV VNC_PW=my-pw
ENV VNC_PASSWORDLESS=true
ENV MOZ_FAKE_NO_SANDBOX=0

USER 0

RUN yum -y install kde-l10n-Chinese && \
    yum -y reinstall glibc-common && \
    yum clean all
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL "zh_CN.UTF-8"

EXPOSE 5901 6901
