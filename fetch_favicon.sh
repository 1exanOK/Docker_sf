#!/bin/sh

if [ -z "$1" ]; then
  exit 1
fi

URL="$1"
FAVICON_URL="${URL}/favicon.ico"

curl -o /app/favicon.ico "$FAVICON_URL"

if [ $? -eq 0 ]; then
  echo "Favicon успешно скачан!"
else
  echo "Ошибка скачивания favicon."
fi
