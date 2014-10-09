#!/bin/bash
umount ./rawmount
mount ../lubuntu/lubuntu12.04.raw  -o loop,offset=1048576 ./rawmount/
