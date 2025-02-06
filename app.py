#!/usr/bin/python
from time import sleep
import requests

while True:
    try:
        r = requests.get('https://georchestra-127-0-0-1.nip.io')
        print(r.text)
    except Exception as e:
        print(e)