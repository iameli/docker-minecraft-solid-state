#!/bin/bash
echo "eula=$EULA" > eula.txt
java -Xms512M -Xmx1536M -XX:MaxPermSize=128M -jar spigot-1.8.7.jar
