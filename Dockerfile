FROM node:16

# Create app directory
WORKDIR /usr/src/app

RUN curl -fsSL https://bun.sh/install | bash
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN bun install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "bun", "run", "start:prod" ]