FROM gree2/base
MAINTAINER gree2

# 0. use mirror
# 1. update install
# 2. import pgp key
# 3. save repo definition
# 4. update install kibana
RUN sudo sed -i "s/archive.ubuntu.com/mirrors.163.com/g" /etc/apt/sources.list && \
sudo apt-get update && apt-get install apt-transport-https && \
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - && \
echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" | sudo tee -a /etc/apt/sources.list && \
sudo apt-get update && sudo apt-get install kibana

ENV KIBANA_HOME /opt/kibana
RUN ln -s $KIBANA_HOME/bin/kibana /usr/bin/kibana

EXPOSE 5601

# if using system v version of init
RUN update-rc.d kibana defaults 95 10
# # if using systemd
# RUN /bin/systemctl daemon-reload
# RUN /bin/systemctl enable kibana.service