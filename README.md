# arch-repo
Repo for arch packages.
# Add to system
```
wget -O /tmp/eupnea-utils.key https://eupnea-linux.github.io/arch-repo/public_key.gpg
sudo pacman-key --add /tmp/eupnea-utils.key
sudo pacman-key --lsign-key 94EB01F3608D3940CE0F2A6D69E3E84DF85C8A12
sudo pacman -Syy
sudo pacman -S eupnea-utils
```
