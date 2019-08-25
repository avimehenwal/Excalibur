# Sandbox Environment

## Ansible
[![asciicast](https://asciinema.org/a/I5EFgXPt5RRa40NwLMKeh1EFX.svg)](https://asciinema.org/a/I5EFgXPt5RRa40NwLMKeh1EFX)

* Inventory files is very important

```
ansible-playbook addUsers.yml \
    --inventory=hosts all \
    --tags "test" \
    --ask-become-pass

ansible-playbook addUsers.yml -i hosts osm --ask-become-pass
```

### Generating encrypted password

```
ansible all -i localhost, -m debug -a "msg={{ 'password' | password_hash('sha512', 'mysecretsalt') }}"
```

#### Test connection

```
ansible -i hosts osm -m ping
```

Building and running docker containers from ansible

```
ansible localhost -m ping
ansible-playbook docker-main.yml --ask-become-pass
```

## Docker

[Docker container `ubuntu:bionic` with `fish-shell`](https://hub.docker.com/r/dideler/fish-shell/dockerfile)

```
docker run --rm --interactive --tty dideler/fish-shell
```

## Vagrant


### ToDo

* [ ] Test ansible automation on dockers instead of vagrant
