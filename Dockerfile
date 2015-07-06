FROM ubuntu

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless curl git

RUN mkdir /build
RUN mkdir /minecraft

# Build it up!
WORKDIR /build
RUN curl -O https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN java -jar BuildTools.jar
RUN mv /build/*.jar /minecraft
RUN rm -rf /build/*
RUN rm /minecraft/BuildTools.jar

# Run it up!
WORKDIR /minecraft
ADD startmc.sh startmc.sh
RUN chmod 755 ./startmc.sh

EXPOSE 25565

CMD ./startmc.sh
