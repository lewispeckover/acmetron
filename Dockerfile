FROM lewispeckover/base
# add consul-template and consulfs
RUN cd /usr/bin && wget -O - https://releases.hashicorp.com/consul-template/0.18.1/consul-template_0.18.1_linux_amd64.tgz | tar xzf - && \
	wget -O - https://github.com/lewispeckover/consulfs/releases/download/v0.1.1/consulfs_v0.1.1_linux_amd64 > /usr/bin/consulfs && chmod +x /usr/bin/consulfs

