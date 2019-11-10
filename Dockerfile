#specify the base image
#indicates that the windowsservercore image will be used as the base image.
FROM mcr.microsoft.com/windows/servercore:ltsc2019

#Metadate indicating image maintainer
LABEL maintainer="Amit Verma <amit.verma1@maersk.com>"

#run some commands to install the addtional programs
#using dism.exe to install the iis role
#RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

RUN powershell -command \
Add-WindowsFeature Web-Server; \

#creates an HTML file and adding content to the file
#RUN echo "Hello World - Docker file" > C:\inetpub\wwwroot\index.html

#specify a command to run on coantainer setup
CMD [ "cmd" ]
