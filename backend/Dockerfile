FROM golang:1.16

WORKDIR /app/backend

COPY . .

RUN apt-get update && apt-get install -y gcc

RUN cd /app/backend && go build -o backend

# Set up the command to run the frontend application
CMD [ "go run backend" ]
