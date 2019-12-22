import cv2

stream_url = "rtsp://192.168.0.176:554/11"

videoCapture = cv2.VideoCapture(stream_url, cv2.CAP_FFMPEG)

while True:
    # This method combining .grab() and read() while somewhat redundant does
    # seem to reduce the latency from the camera to the screen to under 1s.
    videoCapture.grab()
    ret, frame = videoCapture.read()
    cv2.imshow("Video", frame)
    key = cv2.waitKey(1) & 0xFF

    if key == ord("q"):
        break
