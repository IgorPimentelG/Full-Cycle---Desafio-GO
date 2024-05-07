FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY ./main.go .
RUN go build -ldflags="-s -w" main.go 

FROM scratch
WORKDIR /app
COPY --from=builder /app/main /app
CMD [ "./main" ]

