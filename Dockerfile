FROM nginx

LABEL maintainer="<rubyisbeautiful> bryan@rubyisbeautiful.com"

RUN apt-get update \
 && apt-get install -y curl \
 && rm -rf /var/lib/apt/lists/*

RUN curl -o /usr/share/nginx/html/index.html -L https://gist.githubusercontent.com/rubyisbeautiful/4945fa431d18c8703f888c8dfc9af3a9/raw/2b53532f158bb0edef46109d939536d98c7bfc5a/gistfile1.html

# duplicated because AWS EB seems to want it
EXPOSE 80
# ditto
CMD ["nginx", "-g", "daemon off;"]