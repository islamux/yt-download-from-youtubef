#!/bin/bash
# script drived from yt-dlp to download from youtube with best video + best audio but not mkv 
# 
# تحقق من وجود معامل (عنوان URL)
if [ $# -eq 0 ]; then
  echo "يرجى إدخال عنوان URL للفيديو"
  exit 1
fi

# تخزين عنوان URL في متغير
url="$1"

# أمر yt-dlp مع استخدام المتغير (بدون التحقق)
yt-dlp/yt-dlp.sh -f "bestvideo[ext!=mkv]+bestaudio/best" "$url"