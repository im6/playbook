# OS SSH login to Compute Engine

## Google Cloud

- give IAM `Compute OS Admin Login` to compute engine service account
- in gcp console, `gcloud compute os-login ssh-keys add --key-file ./id_rsa.pub --ttl 150d` to add the key to profile
- SSH connect from local, `ssh -i <privateKey-path> <username>@<IP>`
