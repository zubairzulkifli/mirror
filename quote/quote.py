import urllib.request
import random

f = urllib.request.urlopen("http://norbertheidepriem.de")
quotes = []
for line in f.readlines(): 
    line = line.decode("UTF-8")
    
    if line.startswith("<i>"):
        end = line.find("</b><br><br><br>")
        quotes.append(line.strip()[33:end]) 
print(quotes[random.randrange(0,len(quotes))].rstrip(), end="")

