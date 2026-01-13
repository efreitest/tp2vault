#!/bin/bash

# Version 1
vault kv put secret/app/database \
  username=app_user \
  password=SuperSecretPass123 \
  host=db.example.com \
  port=5432

# Version 2
vault kv put secret/app/database \
  username=app_user \
  password=NewPassword456 \
  host=db.example.com \
  port=5432

# Voir les métadonnées
vault kv metadata get secret/app/database

# Lire version 1
vault kv get -version=1 secret/app/database

# Lire version 2
vault kv get -version=2 secret/app/database
