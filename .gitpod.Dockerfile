FROM gitpod/workspace-full:latest

RUN /bin/bash -l -c ". $HOME/.rvm/scripts/rvm && rvm install 3.1.2 && rvm use 3.1.2 && gem install bundler -v 2.3.15 && bundle config --global frozen 1"
