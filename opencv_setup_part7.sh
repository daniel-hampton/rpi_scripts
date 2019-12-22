# Install OpenCV after build/compile
cd ~/opencv/build || exit
sudo make install
sudo ldconfig

# Reset the swapfile configuration
sudo sed -i 's/^#CONF_SWAPSIZE=100$/CONF_SWAPSIZE=100/' /etc/dphys-swapfile
sudo sed -i 's/^CONF_SWAPSIZE=2048$//' /etc/dphys-swapfile

# Restart the swapfile service.
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
