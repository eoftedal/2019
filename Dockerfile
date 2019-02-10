FROM node:8.15.0-stretch

RUN apt-get update
#RUN apt-get install npm -y

RUN apt-get install -y python-pygments ruby2.3-dev ruby2.3 gem gcc make 

RUN gem install jekyll rdiscount kramdown

VOLUME /src
EXPOSE 4000

# Copy node
COPY package.json .
# Do the npm
ENV NODE_PATH="/node_modules"
ENV PATH="${NODE_PATH}/.bin/:${PATH}"

RUN npm install browser-sync gulp gulp-concat gulp-csso gulp-imagemin gulp-plumber gulp-sass gulp-uglify sass node-sass



ENTRYPOINT "gulp"

WORKDIR "/src"
