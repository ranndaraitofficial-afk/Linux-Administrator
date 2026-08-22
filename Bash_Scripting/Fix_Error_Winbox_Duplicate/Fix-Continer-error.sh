#!/bin/bash

sudo docker ps -a | grep GNS3.MikroTikWinBox2026 -y

sudo docker ps -a --filter "name=GNS3.MikroTikWinBox2026" -q | xargs docker rm -f
