# OS SSH login to Compute Engine

## Google Cloud

- in IAM, give `Compute OS Admin Login` access to compute engine service account
- in gcp console, `gcloud compute os-login ssh-keys add --key-file ./id_rsa.pub --ttl 150d` to add the key to profile, value copied from local `.ssh/` public key.
- SSH connect from local, `ssh -i <privateKey-path> <username>@<IP>`
