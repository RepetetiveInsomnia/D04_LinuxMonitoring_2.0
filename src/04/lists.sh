#!/bin/bash

answer_list="200 201 400 401 403 404 500 501 502 503"
method_list="GET POST PUT PATCH DELETE"
dateInit="$(date +%Y)-$(date +%m)-$(date +%d) 00:00:00 $(date +%z)"
url_list="/forum/openforums.org /c/csharp.gcc /main/yandex.ru /google.com /downloads"
protocol_list="HTTP/2 HTTP/1.0 HTTP/1.1"

# 200 OK;
# 201 Created;
# 400 Bad Request;
# 401 Unauthorized;
# 403;
# 404 Not Found;
# 500 Internal Server Error;
# 501 Not Implemented;
# 502 Bad Gateway;
# 503 Service Unavailable;
