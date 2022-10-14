#!/usr/bin/env bash

polybar -q mybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown