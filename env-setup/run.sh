         curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
         chmod 755 /usr/local/bin/docker-compose
         fc -ln
        yum -y install epel-release docker
        systemctl enable docker
        systemctl start docker
        yum repolist
        yum --enablerepo=epel -y install xmlstarlet jq  git
        alias dcomp="docker-compose $*"

