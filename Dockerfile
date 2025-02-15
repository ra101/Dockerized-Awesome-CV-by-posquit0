FROM thomasweise/texlive

RUN sed -i 's|http://archive.ubuntu.com/ubuntu|http://old-releases.ubuntu.com/ubuntu|g' /etc/apt/sources.list && \
    sed -i 's|http://security.ubuntu.com/ubuntu|http://old-releases.ubuntu.com/ubuntu|g' /etc/apt/sources.list

RUN apt update  --fix-missing && apt install -y fonts-roboto fonts-noto texlive-fonts-extra

RUN fc-cache -fv /usr/share/fonts/external/