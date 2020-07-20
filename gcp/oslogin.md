# OS SSH login to Compute Engine

## Google Cloud

1. locally, `ssh-keygen` cmd to generate ssh key pair
1. in IAM, give `Compute OS Admin Login` access to compute engine service account
1. in gcp console
   1. create file named `id_rsa.pub`, and paste the value from local `~/.ssh/id_rsa.pub`
   1. run `gcloud compute os-login ssh-keys add --key-file ./id_rsa.pub --ttl 150d` to add the key to profile
1. SSH connect from local, `ssh -i <privateKey-path> <username>@<IP>`
