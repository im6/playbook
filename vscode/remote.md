# remote development

[source](https://code.visualstudio.com/docs/remote/remote-overview)

## steps

- install `Remote Development` vs extension.
- on server, run `sudo apt-get install openssh-server`
- create SSH key by `ssh-keygen -t rsa -b 4096 -C <username>`
- in client, copy ssh public key at `~/.ssh/id_rsa.pub` to server's ssh folder `authorized_keys`
