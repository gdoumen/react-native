FROM gdoumen/android:28

# Install base software packages
RUN apt-get update 


# ——————————
# Install Node and global packages
# ——————————
ENV NODE_VERSION 10.x
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs

# ——————————
# Install Basic React-Native packages
# ——————————
RUN npm install -g react-native-cli
RUN npm install -g yarn

ENV LANG en_US.UTF-8