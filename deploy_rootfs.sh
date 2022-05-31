#!/bin/bash
cd images
sudo rm -rf /media/robin/pivot/{.*,*}
sudo cp -L * -t /media/robin/crab/
sudo tar -xpf rootfs.tar -C /media/robin/pivot/

