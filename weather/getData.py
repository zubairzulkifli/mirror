#!/usr/bin/python3.4

import json
import urllib.request
import datetime

f = urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?id=2861650&APPID=cec4b6d199ecbce1e5936d0602e4179d&units=metric&lang=de")

f = f.readline().decode("UTF-8")

data = json.loads(f)

today   = datetime.date.today().strftime("%d. %B %Y")
sunrise = datetime.datetime.fromtimestamp(data["sys"]["sunrise"]).strftime("%H:%M")
sunset  = datetime.datetime.fromtimestamp(data["sys"]["sunset"]).strftime("%H:%M")
curTemp = str(data["main"]["temp"]) + "°"

print(today)
print(sunrise)
print(sunset)
print (curTemp)
