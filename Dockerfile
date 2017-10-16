FROM node:6.11.4

MAINTAINER JoeHu <hushenglang@gmail.com>

WORKDIR /var/web/citest

# Copy Source code
COPY . /var/web/citest

# Installing node modules during image building
RUN npm install --production

EXPOSE 8081

# run command during container starting
CMD ["npm", "start"]