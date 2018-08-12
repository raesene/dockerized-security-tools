FROM ubuntu:18.04

LABEL maintainer "Rory Mccune <rorym@mccune.org.uk>"

RUN apt update && apt install -y ruby ruby-json git libx11-xcb1 libxcursor1 libxcomposite1 libxdamage1 libxi6 libxtst6 libglib2.0-0 libnss3 libcups2 libfontconfig1 libxss1 libxrandr2 libgconf-2-4 libasound2 libpangocairo-1.0-0 libatk1.0-0 libatk-bridge2.0-0 libgtk-3-0 && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN groupadd -r chromium && useradd -r -g chromium -G audio,video chromium && mkdir /home/chromium && chown -R chromium:chromium /home/chromium

USER chromium

WORKDIR /home/chromium

RUN git clone --depth=1 https://github.com/nccgroup/autochrome.git && rm -rf autochrome/.git/


RUN ruby autochrome/autochrome.rb

CMD ["/home/chromium/.local/autochrome/chrome-wrapper"]