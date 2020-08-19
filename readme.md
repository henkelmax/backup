# Backup ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/henkelmax/backup/Build) ![GitHub issues](https://img.shields.io/github/issues-raw/henkelmax/backup) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/henkelmax/backup?include_prereleases) ![](https://img.shields.io/docker/pulls/henkelmax/backup)

A simple Docker container that executes cronjobs to create backups.

It adds the following packets:

- openssh-client
- sshpass
- wget
- curl
- rsync

## Basic usage

*backup.yml*

``` yml
version: "3.3"

services:
  backup:
    image: "henkelmax/backup:latest"
    volumes:
      - "/etc/timezone:/etc/timezone:ro"
      - "/etc/localtime:/etc/localtime:ro"
      - "/path/to/your/cron/folder:/cron"  # The path to the directory containing the a crontab named 'crontab'
```

*crontab*

``` crontab
@reboot /cron/backup.sh
0 5 * * * /cron/backup.sh
```
