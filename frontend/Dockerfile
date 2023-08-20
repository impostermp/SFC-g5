# Stage 1: Build the Go frontend application
FROM golang:1.16 AS build

WORKDIR /app/frontend

COPY . .

RUN apt-get update && apt-get install -y gcc

RUN go build -o frontend

# Stage 2: Create a lightweight runtime image
FROM debian:buster-slim

WORKDIR /app/frontend

COPY --from=build /app/frontend/frontend /app/frontend/frontend

# Set up the command to run the frontend application
CMD ["/app/frontend/frontend"]