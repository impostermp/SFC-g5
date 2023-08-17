FROM golang:1.16

WORKDIR /app/frontend

COPY . .

RUN apt-get update && apt-get install -y gcc

RUN cd /app/frontend && go build -o frontend

# Set up the command to run the frontend application
CMD ["/app/frontend"]

