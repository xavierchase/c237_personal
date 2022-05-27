#!/bin/bash
echo $USER
echo $(date)
echo $PWD
ls -1 | wc -l
du -ah $PWD| sort -n -r| head -n 1
