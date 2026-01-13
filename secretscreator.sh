#!/bin/bash

# Configuration
export VAULT_ADDR='http://localhost:8200'
export VAULT_TOKEN='devroot'

echo "🔐 Création des secrets..."

# Secret database
vault kv put secret/app/database \
  username="app_user" \
  password="SuperSecretP@ss123!" \
  host="db.example.com" \
  port="5432"

echo "✅ Secret database créé"

# Secret API
vault kv put secret/app/api \
  key="sk_live_1234567890abcdef" \
  endpoint="https://api.example.com"

echo "✅ Secret API créé"

# Vérification
echo ""
echo "📋 Vérification des secrets:"
vault kv get secret/app/database
echo ""
vault kv get secret/app/api
