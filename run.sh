#!/bin/bash

raspistill -q 10 -w 1280 -h 720 -o /home/kamiken/pi_camera/image.jpg
pid=$!
wait $pid

/home/kamiken/pi_camera/submit.py
