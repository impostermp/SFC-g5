FROM golang:latest

WORKDIR /app

COPY . .

RUN go build -o backend

# Set up the command to run the frontend application
CMD ["./backend"]
