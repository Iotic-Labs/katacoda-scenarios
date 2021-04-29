#!/bin/bash

while [ ! -f /tmp/init.py ]; do sleep 1; done

cat /tmp/init.py
python -i /tmp/init.py