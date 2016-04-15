FROM node:5

# Create app directory
RUN mkdir -p /data
RUN mkdir -p /build

COPY . /data
RUN chown -R www-data /data
USER www-data
ENV HOME /data
WORKDIR /data/src

RUN npm install
# It has to run as www-data user, so we have to run here
RUN npm pack

EXPOSE 8000
USER root
CMD cp *.tgz /build/
