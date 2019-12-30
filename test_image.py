from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2

# initialize the camera and grab a reference to the raw camera capture
camera = PiCamera()
rawCapture = PiRGBArray(camera)

# allow the camera to warm up
time.sleep(0.1)

# grab an image from the camera
camera.capture(rawCapture, format="rgb")
image = rawCapture.array

# display an image on screen and wait for a keypress
image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
cv2.imshow("Image", image)
cv2.waitKey(0)

print("Done.")
