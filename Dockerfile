FROM senoue/vm-gae

LABEL maintainer="Hiromasa SENOUE <senoue.hiromasa@gmail.com>"

# 作業ディレクトリを作成。
WORKDIR /service

# goenv でバージョン固定
RUN git clone https://github.com/syndbg/goenv.git ~/.goenv
RUN echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
RUN echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(goenv init -)"' >> ~/.bashrc
RUN /root/.goenv/bin/goenv install 1.11.0
RUN /root/.goenv/bin/goenv global 1.11.0


