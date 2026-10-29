# Étape 1 : compilation
FROM golang:1.27-alpine AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 go build -o quelpoke .

# Étape 2 : image finale légère (inclut les certificats pour appeler PokéAPI en HTTPS)
FROM gcr.io/distroless/static-debian12:nonroot

COPY --from=build /app/quelpoke /quelpoke

EXPOSE 8080

ENTRYPOINT ["/quelpoke"]
