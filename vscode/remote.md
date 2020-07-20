# remote development

[source](https://code.visualstudio.com/docs/remote/remote-overview)
[ssh dev](https://code.visualstudio.com/docs/remote/ssh)

## steps

- install `Remote Development` vscode extension.
- on server, run `sudo apt-get install openssh-server`
- create SSH key by `ssh-keygen -t rsa -b 4096 -C <username>`
- in client, copy ssh public key at `~/.ssh/id_rsa.pub` to server's ssh folder `authorized_keys`
