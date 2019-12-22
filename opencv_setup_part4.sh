# Adjusting the RPi Swap file
sudo sed -i 's/^CONF_SWAPSIZE=100$/#CONF_SWAPSIZE=100\nCONF_SWAPSIZE=2048/' /etc/dphys-swapfile

# Restart the swap service
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
