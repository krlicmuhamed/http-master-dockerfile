FROM debian:jessie

# Install node.js
RUN apt-get update && apt-get install -y \
    nodejs \
    npm

# Symlink nodejs to node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Update node.js
RUN npm cache clean -f && npm install -g n \
    n stable

# Install http-master globally via npm
RUN npm install -g http-master

# Run http-master
CMD http-master --config /etc/http-master/http-master.conf
