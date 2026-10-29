# Quelpoke

Jeu web écrit en **Go** qui détermine, en fonction de ton nom, quel Pokémon tu es. Le service consomme l'API [PokéAPI](https://pokeapi.co/) pour récupérer le nom du Pokémon.

## Lancer le serveur

```bash
go run .
```

Le serveur écoute sur le port **8080** : <http://localhost:8080/?name=TonNom>

## Avec Docker

```bash
docker build -t quelpoke .
docker run --rm -p 8080:8080 quelpoke
```

Ou avec Docker Compose :

```bash
docker compose up --build
```
