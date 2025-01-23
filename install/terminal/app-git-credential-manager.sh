# Git credential helper that supports major source control hosts
cd /tmp
wget -O gcm.tar.gz "https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.6.1/gcm-linux_amd64.2.6.1.tar.gz"
sudo tar -xvf ./gcm.tar.gz -C /usr/local/bin
git-credential-manager configure
rm ./gcm.tar.gz
cd -

sudo apt install -y gpg pass
echo "
%no-protection
Key-Type: default
Key-Curve: ed25519
Subkey-Type: default
Subkey-Curve: ed25519
Name-Real: gcm
Name-Email: gmc@gcm.com
Expire-Date: 0
%commit
" >gpg_conf.txt
gpg --batch --gen-key gpg_conf.txt
git config --global credential.credentialStore gpg
pass init "gcm <gcm@gcm.com>"
rm ./gpg_conf.txt
