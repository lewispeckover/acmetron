FROM lewispeckover/base
# add consul-template and consulfs and acme-tiny
RUN cd /usr/bin && wget -O - https://releases.hashicorp.com/consul-template/0.18.1/consul-template_0.18.1_linux_amd64.tgz | tar xzf - && \
	wget -O - https://github.com/lewispeckover/consulfs/releases/download/v0.1.1/consulfs_v0.1.1_linux_amd64 > /usr/bin/consulfs && chmod +x /usr/bin/consulfs && \
	apk add --no-cache python && wget -O - https://raw.githubusercontent.com/lewispeckover/acme-tiny/Noverify/acme_tiny.py > /usr/bin/acme_tiny.py
