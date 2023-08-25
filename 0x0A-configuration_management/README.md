# Configuration Management

**0x0A. Configuration Management**

**By:** Sylvain Kalache

**Weight:** 1

**Project Timeline:** August 25, 2023, 6:00 AM - August 26, 2023, 6:00 AM

**Checker Release:** August 25, 2023, 12:00 PM

**Auto Review:** Will be launched at the deadline

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Requirements](#requirements)
  - [General](#general)
  - [Note on Versioning](#note-on-versioning)
  - [Installing Puppet](#installing-puppet)
  - [Installing puppet-lint](#installing-puppet-lint)
- [Tasks](#tasks)
  - [Task 0: Create a File](#task-0-create-a-file)
    - [Requirements](#requirements-task-0)
  - [Task 1: Install a Package](#task-1-install-a-package)
    - [Requirements](#requirements-task-1)
  - [Task 2: Execute a Command](#task-2-execute-a-command)
    - [Requirements](#requirements-task-2)
- [Repository](#repository)
- [Author](#author)

## Background Context

During my time at SlideShare, I had the opportunity to work on an auto-remediation tool called Skynet. Skynet was designed to monitor, scale, and fix cloud infrastructure. It leveraged a parallel job-execution system called MCollective, which allowed me to execute commands on one or multiple servers simultaneously. I could apply actions to specific sets of servers by using filters such as the server's hostname or other metadata like server type and environment.

However, a critical bug surfaced in my code. This bug resulted in sending a 'nil' value to the filter method, leading to two significant issues:

1. MCollective interpreted 'nil' as a command to apply actions to all servers.
2. The action I unintentionally sent was to terminate the selected servers.

The consequences were severe - 75% of SlideShare's conversion infrastructure servers were inadvertently shut down, causing widespread disruptions for users trying to convert their documents and media files.

Thanks to Puppet, we were able to recover our infrastructure in less than an hour. The incident underscored the importance of automation in managing complex infrastructure and avoiding potential disasters.

For more context, you can also check out [this tweet](https://twitter.com/devopsreact/status/836971570136375296).

## Resources

- [Intro to Configuration Management](#)
- [Puppet Resource Type: file](#)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](#)
- [Puppet lint](#)
- [Puppet emacs mode](#)

## Requirements

### General

- All project files will be interpreted on Ubuntu 20.04 LTS.
- Ensure all project files end with a newline character.
- A `README.md` file at the root of the project folder is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without errors.
- Each Puppet manifest file must start with a comment explaining its purpose.
- Puppet manifest files must have the `.pp` extension.

### Note on Versioning

- Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.
- No need to attempt version upgrades; this project focuses on basic-level syntax.

### Installing Puppet

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

### Installing puppet-lint

```bash
$ gem install puppet-lint
```

## Tasks

### Task 0: Create a File

Using Puppet, create a file in `/tmp`.

#### Requirements

- File path is `/tmp/school`.
- File permission is `0744`.
- File owner is `www-data`.
- File group is `www-data`.
- File contains "I love Puppet".

### Task 1: Install a Package

Using Puppet, install Flask from pip3.

#### Requirements

- Install Flask.
- Version must be `2.1.0`.

### Task 2: Execute a Command

Using Puppet, create a manifest that kills a process named `killmenow`.

#### Requirements

- Must use the `exec` Puppet resource.
- Must use `pkill`.

## Repository

- GitHub Repository: [alx-system_engineering-devops](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0A-configuration_management)
- Directory: `0x0A-configuration_management`

## Author

This project was created by [Alexander Udeogaranya](https://github.com/Dr-dyrane) as part of the ALX Software Engineering Program.

---

You can use this updated template with a table of contents for your project's `README.md` file.