# remote development

[source](https://code.visualstudio.com/docs/remote/remote-overview)

## steps

- install `Remote Development` vs extension.
- on server, run `sudo apt-get install openssh-server`
- create SSH key by `ssh-keygen -t rsa -b 4096 -C <username>`
- in client, copy ssh public key at `~/.ssh/id_rsa.pub` to server's ssh folder `authorized_keys`

### Google Cloud
- give IAM `Compute OS Admin Login` to compute engine service account
- in gcp console, `gcloud compute os-login ssh-keys add --key-file ./id_rsa.pub --ttl 150d` to add the key to profile
- SSH connect from local, `ssh -i <privateKey-path> <username>@<IP>`