
#!/bin/bash

# Ngrok start karo HTTP tunnel port 8080
nohup ngrok http 8080 > /dev/null & 

#wait for tunnel to estabkish
sleep 5

#public URL fetch karo
URL=$(curl -s http://localhost:4040/api/tunnels | grep -o 'https://[0-9a-zA-Z]*\.ngrok.io' | head -n1)

#Github folder me file update karo 
echo "$URL" > ~/Desktop/worm/lina.txt

#Git push karo 
cd ~/Desktop/worm
git add lina.txt
git commit -m "Updated public URL"
git push
