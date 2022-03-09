echo "Docker installer"
echo "Installs docker and portainer.io
echo ""
echo "Please run as root"
apt update -y && apt upgrade -y

echo " installing docker"
sudo curl -fsSL https://get.docker.com |bash
sudo docker volume create portainer_data
echo " installing portainer"
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce


