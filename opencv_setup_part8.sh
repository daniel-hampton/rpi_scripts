# Sym-links for OpenCV
#$ cd /usr/local/lib/python3.7/site-packages/cv2/python-3.7
#$ sudo mv cv2.cpython-37m-arm-linux-gnueabihf.so cv2.so
#$ cd ~/.virtualenvs/cv/lib/python3.7/site-packages/
#$ ln -s /usr/local/lib/python3.7/site-packages/cv2/python-3.7/cv2.so cv2.so

# Test OpenCV is working
#$ cd ~
#$ workon cv
#$ python
#>>> import cv2
#>>> cv2.__version__
#'4.1.1'
#>>>
