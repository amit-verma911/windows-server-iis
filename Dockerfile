#specify the base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

LABEL version="1.0" maintainer="Amit Verma <amit.verma1@maersk.com>"


#run some commands to install the addtional programs
RUN powershell -command
Add-WindowsFeature Web-Server;


#specify a command to run on coantainer setup
#CMD [ "cmd" ]
