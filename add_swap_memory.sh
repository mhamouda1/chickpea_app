sudo dd if=/dev/zero of=/swapfile bs=2048 count=2097152 && \
sudo chmod 600 /swapfile && \
sudo mkswap /swapfile && \
echo '/swapfile            swap swap    0   0' >> /etc/fstab && \
sudo mount -a && \
sudo swapon -s && \
sudo swapon /swapfile && \
free -h
