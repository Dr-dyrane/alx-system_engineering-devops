# 0x0B. SSH

**Author:** Alexander Udeogaranya

**Repository:** [0x0B-ssh](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0B-ssh)

**Project Start Date:** August 25, 2023

**Project Deadline:** August 28, 2023

**Checker Release Date:** August 26, 2023

**Auto Review:** Will be launched at the deadline

## Table of Contents

- [Background Context](#background-context)
- [Requirements](#requirements)
- [Tasks](#tasks)
    - [Task 0: Use a private key](#task-0-use-a-private-key)
    - [Task 1: Create an SSH key pair](#task-1-create-an-ssh-key-pair)
    - [Task 2: Client configuration file](#task-2-client-configuration-file)
    - [Task 3: Let me in!](#task-3-let-me-in)
    - [Task 4: Client configuration file (w/ Puppet)](#task-4-client-configuration-file-w-puppet)
- [Conclusion](#conclusion)

## Background Context

In this project, you will be working with an Ubuntu server hosted in a remote datacenter. Unlike the previous level, you'll connect to this server using SSH with an RSA key instead of a password. The server has been configured with the public key you created in a previous project, which can be found in your intranet profile.

This server is running Ubuntu 20.04 LTS.

### Resources

Before diving into the tasks, consider reviewing the following resources to help you with this project:

- [What is a (physical) server - text](link-to-resource)
- [What is a (physical) server - video](link-to-resource)
- [SSH essentials](link-to-resource)
- [SSH Config File](link-to-resource)
- [Public Key Authentication for SSH](link-to-resource)
- [How Secure Shell Works](link-to-resource)
- [SSH Crash Course (Long, but highly informative. Watch this if configuring SSH is still confusing.)](link-to-resource)
- [Understanding the SSH Encryption and Connection Process](link-to-resource)
- [Secure Shell Wiki](link-to-resource)
- [IETF RFC 4251 (Description of the SSH Protocol)](link-to-resource)
- [Internet Engineering Task Force](link-to-resource)
- [Request for Comments](link-to-resource)

**Man or Help:**

You might find these commands useful for reference:

- `ssh`
- `ssh-keygen`
- `env`

### Learning Objectives

By the end of this project, you are expected to understand the following concepts:

- What is a server
- Where servers usually live
- What is SSH
- How to create an SSH RSA key pair
- How to connect to a remote host using an SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

### Copyright - Plagiarism

Please note that plagiarism is strictly prohibited. You should come up with solutions for the tasks on your own. Any form of plagiarism will result in removal from the program.

## Requirements

### General

- **Allowed Editors:** vi, vim, emacs
- **Interpreted on:** Ubuntu 20.04 LTS
- **Files:** Should end with a new line
- **Executable Scripts:** All Bash script files must be executable
- **Script Headers:** The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- **Comments:** The second line of all your Bash scripts should be a comment explaining what the script is doing

### Your Servers

- Server Information, including IP and username, can be found in the "my servers" section of the intranet.

## Tasks

### Task 0: Use a private key

Write a Bash script that uses SSH to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

**Requirements:**

- Only use SSH single-character flags
- Do not use `-l`
- You do not need to handle the case of a private key protected by a passphrase

Example:

```bash
sylvain@ubuntu$ ./0-use_a_private_key
ubuntu@server01:~$ exit
Connection to 8.8.8.8 closed.
sylvain@ubuntu$
```

### Task 1: Create an SSH key pair

Write a Bash script that creates an RSA key pair.

**Requirements:**

- Name of the created private key must be `school`
- Number of bits in the created key to be created is `4096`
- The created key must be protected by the passphrase `betty`

Example:

```bash
sylvain@ubuntu$ ls
1-create_ssh_key_pair


sylvain@ubuntu$ ./1-create_ssh_key_pair
Generating public/private rsa key pair.
Your identification has been saved in school.
Your public key has been saved in school.pub.
The key fingerprint is:
5d:a8:c1:f5:98:b6:e5:c0:9b:ee:02:c4:d4:01:f3:ba vagrant@ubuntu
The key's randomart image is:
+--[ RSA 4096]----+
|      oo...      |
|      .+.o =     |
|     o  + B +    |
|      o. = O     |
|     .. S = .    |
|      .. .       |
|      E.  .      |
|        ..       |
|         ..      |
+-----------------+
sylvain@ubuntu$ ls
1-create_ssh_key_pair school  school.pub
sylvain@ubuntu$
```

### Task 2: Client configuration file

Configure your local SSH client configuration file to use the private key `~/.ssh/school` and refuse to authenticate using a password.

**Example:**

```bash
sylvain@ubuntu$ ssh -v ubuntu@98.98.98.98
OpenSSH_6.6.1, OpenSSL 1.0.1f 6 Jan 2014
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 47: Applying options for *
debug1: Connecting to 98.98.98.98 port 22.
debug1: Connection established.
debug1: identity file /home/sylvain/.ssh/school type -1
debug1: identity file /home/sylvain/.ssh/school-cert type -1
debug1: Enabling compatibility mode for protocol 2.0
debug1: Local version string SSH-2.0-OpenSSH_8.1
debug1: Remote protocol version 2.0, remote software version OpenSSH_7.6p1 Ubuntu-4ubuntu0.5
debug1: match: OpenSSH_7.6p1 Ubuntu-4ubuntu2.1 pat OpenSSH* compat 0x04000000
debug1: SSH2_MSG_KEXINIT sent
debug1: SSH2_MSG_KEXINIT received
debug1: kex: server->client aes128-ctr hmac-sha1-etm@openssh.com none
debug1: kex: client->server aes128-ctr hmac-sha1-etm@openssh.com none
debug1: sending SSH2_MSG_KEX_ECDH_INIT
debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
debug1: Server host key: ECDSA bd:03:f8:6a:12:28:d6:17:85:c1:b6:91:f1:da:0f:37
debug1: Host '98.98.98.98' is known and matches the ECDSA host key.
debug1: Found key in /home/sylvain/.ssh/known_hosts:1
debug1: ssh_ecdsa_verify: signature correct
debug1: SSH2_MSG_NEWKEYS sent
debug1: expecting SSH2_MSG_NEWKEYS
debug1: SSH2_MSG_NEWKEYS received
debug1: SSH2_MSG_SERVICE_REQUEST sent
debug1: SSH2_MSG_SERVICE_ACCEPT received
debug1: Authentications that can continue: publickey,password
debug1: Next authentication method: publickey
debug1: Trying private key: /home/sylvain/.ssh/school
debug1: key_parse_private2: missing begin marker
debug1: read PEM private key done: type RSA
debug1: Authentication succeeded (publickey).
Authenticated to 98.98.98.98 ([98.98.98.98]:22).
debug1: channel 0: new [client-session]
debug1: Requesting no-more-sessions@openssh.com
debug1: Entering interactive session.
debug1: client_input_global_request: rtype hostkeys-00@openssh.com want_reply 0
debug1: Sending environment.
debug1: Sending env LANG = en_US.UTF-8
ubuntu@magic-server:~$
```

### Task 3: Let me in!

Add the provided SSH public key to your server so that we can connect using the `ubuntu` user.

```plaintext
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
```

### Task 4: Client configuration file (w/ Puppet)

Use Puppet to make changes to your client SSH configuration file. Configure it to use the private key `~/.ssh/school` and refuse to authenticate using a password.

**Example:**

```bash
vagrant@ubuntu:~$ sudo puppet apply 100-puppet_ssh_config.pp
Notice: Compiled catalog for ubuntu-xenial in environment production in 0.11 seconds
Notice: /Stage[main]/Main/File_line[Turn off passwd auth]/ensure: created
Notice: /Stage[main]/Main/File_line[Declare identity file]/ensure: created
Notice: Finished catalog run in 0.03 seconds
vagrant@ubuntu:~$
```

## Conclusion

This README provides a detailed guide to the SSH project, including its objectives, requirements, and tasks. Follow the instructions carefully, and document your progress as you work through each task.