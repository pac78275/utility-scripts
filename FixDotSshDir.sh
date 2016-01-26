sudo chmod -R 755 ~/.ssh
find ~/.ssh -name "*id_rsa*" -exec sudo chmod 400 {} \;
sudo chmod 400 ~/.ssh/github_rsa*
sudo chmod 644 ~/.ssh/known_hosts
