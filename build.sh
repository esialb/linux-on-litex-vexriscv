#!/bin/bash

rm -R build/orangecrab/
./make.py --board=orangecrab --device 85F --spi-clk-freq 12000000  --build
dfu-suffix -v 1209 -p 5bf0 -a build/orangecrab/gateware/orangecrab.bit

