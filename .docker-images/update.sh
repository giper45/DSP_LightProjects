update_image() {
cd $1; docker build -t $2 . 
cd ..
}

pull_image() {
  # If doesn't exists pull
 if [ -z "$(docker images | grep -w "$1")" ]; then
  echo "Pulling $1..."
  docker pull $1
  fi
}
# Built images 

update_image dockersecplayground_alpine dockersecplayground/alpine:latest
update_image dockersecplayground_alpine_ftp dockersecplayground/alpine_ftp:latest
update_image dockersecplayground_alpine_compiler dockersecplayground/alpine_compiler:latest
update_image dockersecplayground_alpine_networking dockersecplayground/alpine_networking:latest
update_image dockersecplayground_alpine_pentest dockersecplayground/alpine_pentest:latest
update_image dockersecplayground_alpine_bot dockersecplayground/alpine_bot:latest
update_image dockersecplayground_alpine_router dockersecplayground/alpine_router:latest
update_image dockersecplayground_alpine_telnet dockersecplayground/alpine_telnet:latest
update_image dockersecplayground_alpine_ssh_password dockersecplayground/alpine_ssh_password:latest
update_image dockersecplayground_ssh_keys dockersecplayground/alpine_ssh_keys:latest
update_image dockersecplayground_linode_lamp dockersecplayground/linode_lamp:latest

pull_image vimagick/webgoat:latest
pull_image bkimminich/juice-shop:latest
