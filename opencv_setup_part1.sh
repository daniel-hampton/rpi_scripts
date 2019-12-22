sudo apt-get purge wolfram-alpha -y
sudo apt-get purge libreoffice* -y
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo apt-get update -y && sudo apt-get upgrade -y
# Install developer tools
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libfontconfig1-dev libcairo2-dev -y
sudo apt-get install libgdk-pixbuf2.0-dev libpango1.0-dev -y
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install libhdf5-dev libhdf5-serial-dev libhdf5-103 -y
sudo apt-get install libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5 -y
sudo apt-get install python3-dev -y

# Install virtualenv and virtualenvwrapper (If pip already installed)
sudo pip3 install virtualenv virtualenvwrapper

grep -qxF '# virtualenv and virtualenvwrapper' /home/pi/.bashrc || echo '# virtualenv and virtualenvwrapper' >> /home/pi/.bashrc
grep -qxF 'export WORKON_HOME=$HOME/.virtualenvs' /home/pi/.bashrc || echo 'export WORKON_HOME=$HOME/.virtualenvs' >> /home/pi/.bashrc
grep -qxF 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' /home/pi/.bashrc || echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> /home/pi/.bashrc
grep -qxF 'source /usr/local/bin/virtualenvwrapper.sh' /home/pi/.bashrc || echo 'source /usr/local/bin/virtualenvwrapper.sh' >> /home/pi/.bashrc

# Need to: source ~/.bashrc
