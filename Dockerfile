FROM debian:jessie

# Install latest node.js
RUN apt-get update && apt-get install -y \
    nodejs

# Symlink nodejs to node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install http-master globally via npm
RUN npm install -g http-master

# Run http-master
http-master --config /etc/http-master/http-master.conf
