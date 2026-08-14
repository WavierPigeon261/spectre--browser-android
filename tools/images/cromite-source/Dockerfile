ARG VERSION

FROM uazo/chromium:$VERSION

ARG Spectre Browser_SHA
ENV Spectre Browser_SHA=$Spectre Browser_SHA

ARG HTTP_PROXY
ENV HTTP_PROXY=$HTTP_PROXY
ENV HTTPS_PROXY=$HTTP_PROXY
ENV https_proxy=$HTTP_PROXY

#USER lg
WORKDIR /home/lg/working_dir

RUN sudo chown lg /etc/apt/apt.conf.d/proxy.conf
RUN sudo echo "Acquire::http::Proxy \"$HTTP_PROXY\";" >/etc/apt/apt.conf.d/proxy.conf
RUN sudo apt-get update

COPY apply-Spectre Browser-patches.sh .

RUN sudo chmod +x ./apply-Spectre Browser-patches.sh && \
    mkdir Spectre Browser && \
    cd Spectre Browser && \
    git init && \
    git remote add origin https://github.com/uazo/Spectre Browser && \
    git fetch origin $Spectre Browser_SHA && \
    git reset --hard FETCH_HEAD && \
    cd ..

RUN ./apply-Spectre Browser-patches.sh

