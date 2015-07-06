FROM ubuntu

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y openjdk-7-jre-headless curl

RUN curl -O https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

RUN
