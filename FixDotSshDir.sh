chmod -R 755 ~/.ssh
find ~/.ssh -name "*id_rsa*" -exec chmod 400 {} \;
chmod 400 ~/.ssh/github_rsa*
chmod 644 ~/.ssh/known_hosts
