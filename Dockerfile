FROM nikolaik/python-nodejs:python3.10-nodejs19

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade yt-dlp

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt
                                 ### ❖ ➥ 𝗕𝐖𝗙 𝗠𝗨𝗦𝗜𝗖™🇮🇳
CMD bash start
