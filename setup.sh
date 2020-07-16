# prints docker container info

printf "\033[1;31m"
echo "docker container info: "
printf "\033[0m"
docker ps
# creates new start shell on desktop
cd ~/Desktop

printf "\033[1;32m"
echo "what would you like to name your command?"

printf "\033[0m"
read name

printf "\033[1;33m"
echo "in the next window, type"

printf "\033[1;36m"
echo "#/bin/sh"
echo "open ~/Applications/Docker.app"
echo "docker start (container name)"
echo "screen -S (title) docker exec -it (container name) /bin/bash"
echo "docker stop (container name)"

printf "\033[1;39m"
read -t 20 -p "[Press Enter]"
printf "\033[0m"
nano $name

cp $name /usr/local/bin

chmod 777 /usr/local/bin/$name
