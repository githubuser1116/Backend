FROM node:17

LABEL version="1.0"
LABEL description="Base docker image for Node backend"

WORKDIR /app

COPY . .

RUN npm install --production

EXPOSE 4000

RUN npm run build
RUN npm run prisma

CMD ["npm", "run", "deploy"] 
ENTRYPOINT ["/usr/local/bin/npm", "run", "dev"]

# CMD ["./wait-for-it.sh", "backend-postgres:5432", "--", "npm", "run", "migrate", "&&", "npm", "run", "dev"]