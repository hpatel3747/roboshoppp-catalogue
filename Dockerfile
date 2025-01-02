FROM        node:20
RUN         mkdir /apps
RUN         useradd -d /app roboshop
WORKDIR     /app
RUN         chown roboshop:roboshop /app
USER        roboshop
COPY        package.json server.js /app/
RUN         npm install
#COPY        run.sh /app
ENTRYPOINT  ["bash", "/app/run.sh"]
