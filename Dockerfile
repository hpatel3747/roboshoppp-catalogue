FROM        node:20
RUN         mkdir /apps
RUN         useradd -d /app roboshop
WORKDIR     /app
RUN         chown roboshop:roboshop /app
USER        roboshop
COPY        package.json server.js /app/
RUN         npm install
#COPY        run.sh /app                    #required only when you are ready to install new reclic
ENTRYPOINT  ["bash", "/app/run.sh"]
