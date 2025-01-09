FROM        node:20
RUN         mkdir /apps
RUN         useradd -d /app roboshop
WORKDIR     /app
RUN         chown roboshop:roboshop /app
USER        roboshop
COPY        package.json server.js /app/
RUN         npm install
#COPY        run.sh /app                    #required only when you are ready to install new reclic
#COPY        mongo.repo /etc/yum.repos.d/mongo.repo
#RUN         dnf install mongodb-mongosh -y
COPY        db/master-data.js /app/db
#RUN         mongosh --host 9eebaeb4ca3a </app/db/master-data.js
#ENTRYPOINT  ["bash", "/app/run.sh"]
ENTRYPOINT   ["tail", "-f", "dev/null"]
