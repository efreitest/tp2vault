
# Lecture sur les secrets de l'app
path "secret/data/app/*" {
  capabilities = ["read", "list"]
}

path "secret/metadata/app/*" {
  capabilities = ["read", "list"]
}
