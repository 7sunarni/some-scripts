FROM python:3.10-alpine

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp ; \
    chmod +x yt-dlp ; \
    yt-dlp "https://www.youtube.com/watch?v=$video_id"
