#!/usr/bin/env bash

# input_video=20201024_171754
# input_video=20201024_171851
# input_video=20201024_172054
# input_video=20201024_172125
input_video=20201024_172247
# input_video=20201024_172324

## with camera (v4l2)
if [[ $1 == camera ]]; then
    time python3 social_distance_detector.py
## with video files (mp4)
else
    time python3 social_distance_detector.py \
    --input ${input_video}.mp4  \
    --output ${input_video}_output.avi \
    --display 0
fi
