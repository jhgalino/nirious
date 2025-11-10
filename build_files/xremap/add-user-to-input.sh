grep -E '^input:' /usr/lib/group | sudo tee -a /etc/group && sudo usermod -aG input $USER
echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/input.rules
