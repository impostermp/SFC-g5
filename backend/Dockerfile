# Stage 1: Build the Go application
FROM golang:latest AS build

WORKDIR /app

COPY . .

RUN go build -o backend

# Stage 2: Create a lightweight runtime image
FROM debian:buster-slim

WORKDIR /app

COPY --from=build /app/backend /app/backend

# Set up the command to run the backend application
CMD ["./backend"]