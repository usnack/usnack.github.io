FROM ubuntu:latest
LABEL authors="ksyoo"
WORKDIR /jekyll
RUN apt-get update \
    && apt-get install -y \
    ruby-full \
    build-essential \
    zlib1g-dev \
    git \
    nodejs \
    npm \
    && echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc \
    && echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc \
    && echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN gem install jekyll bundler

ENTRYPOINT ["top", "-b"]
