#!/bin/bash

XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -i ~/Pictures/drink_dark.png "Drink water now: $(date)"
