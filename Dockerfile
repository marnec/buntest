FROM node:14.19.3

# Create app directory
WORKDIR /usr/src/app

# RUN apt update && apt install -y curl unzip && rm -rf /var/lib/apt/lists/*
# # RUN apk add bash

# RUN curl -fsSL https://bun.sh/install | bash

# ENV BUN_INSTALL="/root/.bun"
# ENV PATH="$BUN_INSTALL/bin:$PATH"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install


# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start:prod" ]