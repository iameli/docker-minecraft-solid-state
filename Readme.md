docker-solid-state-minecraft
----------------------------

Sometimes I want a Minecraft server, running Craftbukkit with some mods. I'm sick of unzipping and copying folders and all that in order to make it happen. This Docker container aims to make it a whole lot easier using the following methods.

- Automated installation of the server.
- Automated backups to S3 and restore from S3. If you're like me, you go in phases with Minecraft;
you play for a couple months then stop for a couple months. Using this you can boot up a fresh
server and pick up exactly where you left off.
- Mod installation is super easy.

TODO: That S3 stuff I just talked about.
