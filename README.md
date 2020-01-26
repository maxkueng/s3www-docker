# s3www-docker

This is a Dockerfile for [harshavardhana/s3www](https://github.com/harshavardhana/s3www).

## Usage

```sh
docker run \
  -d \
  -p 80:8080 \
  maxkueng/s3www:latest \
  -endpoint https://your-s3-endpoint \
  -accessKey YOUR_ACCESS_KEY \
  -secretKey YOUR_SECRET_KEY \
  -bucket your-bucket
```
