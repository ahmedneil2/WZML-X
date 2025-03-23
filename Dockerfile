FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    git \
    python3-pip \
    bash

RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
