# SET UP THE REPOSITORY
# Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update -y 
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88, 
# by searching for the last 8 characters of the fingerprint.
sudo apt-key fingerprint 0EBFCD88

# Use the following command to set up the stable repository. 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

# Update the apt package index, and install the latest version of Docker Engine and containerd, 
# or go to the next step to install a specific version:
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Verify that Docker Engine is installed correctly by running the hello-world image.
sudo docker run hello-world
