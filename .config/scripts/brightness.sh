#!/bin/bash

send_notification() {
  brightness=$(brightnessctl -m | cut -d, -f4)
  notify-send -t 1000 -h string:x-canonical-private-synchronous:brightness -h int:value:$brightness "Brightness: ${brightness}"
}

case $1 in
  up)
    brightnessctl -q set 1%+
    send_notification;;
  down)
    brightnessctl -q set 1%-
    send_notification;;
esac
