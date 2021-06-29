FROM ubuntu:20.04

# install apt packages
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
    ca-certificates mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file patch sudo; \
	rm -rf /var/lib/apt/lists/*;

# install mecab-ipadic-neologd
RUN  set -eux; \
  git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git /tmp/mecab-ipadic-neologd; \
  /tmp/mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y;

# change default dictionary
RUN sed -ri -e 's!/var/lib/mecab/dic/debian!/usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd!g' /etc/mecabrc

CMD ["/usr/bin/mecab"]
