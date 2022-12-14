# arch-repo

Repo for arch packages. Provides the following packages:

* `eupnea-utils`: Packaged eupnea scripts from the [postinstall](https://github.com/eupnea-linux/postinstall-scripts)
  and [audio](https://github.com/eupnea-linux/audio-scripts/) repos.
* `eupnea-system`: Does not install anything per se, but instead includes a postinstall hook, which
  executes [system-update.py](https://github.com/eupnea-linux/system-update) to upgrade between Depthboot/EupneaOS
  versions.
* `cgpt-vboot-utils`: Repackaged Ubuntu debs for cgpt and vboot-utils.

# Add to system

```
wget -O /tmp/eupnea.key https://eupnea-linux.github.io/arch-repo/public_key.gpg
sudo pacman-key --add /tmp/eupnea.key
sudo pacman-key --lsign-key 94EB01F3608D3940CE0F2A6D69E3E84DF85C8A12
echo "[eupnea]"$'\n'"Server = https://eupnea-linux.github.io/arch-repo/repodata/$arch" | sudo tee -a /etc/pacman.conf
sudo pacman -Syy
sudo pacman -S eupnea-utils eupnea-system cgpt-vboot-utils
```
