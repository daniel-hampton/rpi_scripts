# Compile OpenCV on the RPi. Can take 1-4 hours.
cd ~/opencv/build || exit
make -j4
# Took 6 hours. Hung for a while at 100%.
