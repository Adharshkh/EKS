#######################PRITUNL VPN##############################

# #!/bin/bash
# sudo apt upgrade linux-image-generic -y
# sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
# deb http://repo.pritunl.com/stable/apt jammy main
# EOF

# # Import signing key from keyserver
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
# # Alternative import from download if keyserver offline
# curl https://raw.githubusercontent.com/pritunl/pgp/master/pritunl_repo_pub.asc | sudo apt-key add -

# sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list << EOF
# deb https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse
# EOF

# wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

# sudo apt update
# sudo apt --assume-yes upgrade

# # WireGuard server support
# sudo apt -y install wireguard wireguard-tools

# sudo ufw disable

# sudo apt -y install pritunl mongodb-org
# sudo systemctl enable mongod pritunl
# sudo systemctl start mongod pritunl

######################JENKINS################


#!/bin/bash

sudo apt-get update
sudo apt-get install -y openjdk-17-jdk openjdk-17-jre
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y jenkins
sudo apt-get install -y docker.io
sudo usermod -aG docker jenkins
sudo apt-get install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install