FROM python:alpine AS scdl
WORKDIR /scdl
ADD . .
RUN pip install -e .
RUN apk add --no-cache ffmpeg
ENTRYPOINT ["scdl"]
CMD ["--help"]
