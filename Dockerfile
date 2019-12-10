FROM gdoumen/android:28

ENV NODE_VERSION 10.x

# Install base software packages
RUN apt-get update 

# ——————————
# Install Node and global packages
# ——————————
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash -
RUN apt-get install -y nodejs

# ——————————
# Install Basic React-Native packages
# ——————————
RUN npm install -g react-native-cli
RUN npm install -g yarn

ENV LANG en_US.UTF-8