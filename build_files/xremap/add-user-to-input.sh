grep -E '^input:' /usr/lib/group | sudo tee -a /etc/group && sudo usermod -aG input $USER
