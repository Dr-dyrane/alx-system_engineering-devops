# Web Server

## Table of Contents
- [Description](#description)
- [Concepts](#concepts)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [0. Transfer a File to Your Server](#0-transfer-a-file-to-your-server)
  - [1. Install Nginx Web Server](#1-install-nginx-web-server)
  - [2. Setup a Domain Name](#2-setup-a-domain-name)
  - [3. Redirection](#3-redirection)
  - [4. Not Found Page 404](#4-not-found-page-404)
  - [5. Install Nginx Web Server (w/ Puppet)](#5-install-nginx-web-server-w-puppet)
- [Resources](#resources)
- [Learning Objectives](#learning-objectives)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Files](#files)
- [Author](#author)
- [Copyright](#copyright)

## Description

In this project, you will learn about web servers, child processes, DNS, and how to configure an Nginx web server. You will also practice automation using Bash scripts and Puppet manifests. The tasks in this project will help you understand the role of web servers, DNS configuration, redirection, custom error pages, and server automation.

## Concepts

Throughout this project, you will explore the following concepts:
- What is the main role of a web server?
- What is a child process?
- Why web servers usually have parent processes and child processes?
- Main HTTP requests.
- DNS (Domain Name System) and its main role.
- DNS Record Types (A, CNAME, TXT, MX).
- HTTP status codes, including 301 (Moved Permanently).
- Configuration of Nginx web server.
- Automation with Bash scripts and Puppet manifests.

## Requirements

### General
- Allowed editors: vi, vim, emacs.
- All your files will be interpreted on Ubuntu 16.04 LTS.
- All your files should end with a new line.
- A `README.md` file, at the root of the project folder, is mandatory.
- All your Bash script files must be executable.
- Your Bash script must pass Shellcheck (version 0.3.7) without any errors.
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all your Bash scripts should be a comment explaining what the script is doing.
- You can't use `systemctl` for restarting a process.

## Tasks

### 0. Transfer a File to Your Server

Write a Bash script that transfers a file from your client to a server.

- Accepts 4 parameters:
  - The path to the file to be transferred.
  - The IP of the server to which you want to transfer the file.
  - The username that `scp` connects with.
  - The path to the SSH private key that `scp` uses.
- Display `Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY` if fewer than 3 parameters are passed.
- `scp` must transfer the file to the user's home directory `~/`.
- Strict host key checking must be disabled when using `scp`.

### 1. Install Nginx Web Server

Install Nginx on your `web-01` server.

- Nginx should be listening on port 80.
- When querying Nginx at its root `/` with a GET request (requesting a page) using `curl`, it must return a page that contains the string `Hello World!`.
- Create a Bash script that configures a new Ubuntu machine to meet the above requirements.

### 2. Setup a Domain Name

Configure your `web-01` server with a domain name.

- Provide the domain name only (e.g., `foobar.tech`), no subdomain (e.g., `www.foobar.tech`).
- Configure your DNS records with an A entry so that your root domain points to your `web-01` IP address.

### 3. Redirection

Configure your Nginx server to redirect `/redirect_me` to another page with a 301 Moved Permanently status.

- The redirection must be a "301 Moved Permanently".
- Create a Bash script that configures a new Ubuntu machine to meet the above requirements.

### 4. Not Found Page 404

Configure your Nginx server to have a custom 404 page that contains the string "Ceci n'est pas une page" (This is not a page).

- The page must return an HTTP 404 error code.
- Create a Bash script that configures a new Ubuntu machine to meet the above requirements.

### 5. Install Nginx Web Server (w/ Puppet)

Install and configure an Nginx web server using Puppet.

- Nginx should be listening on port 80.
- When querying Nginx at its root `/` with a GET request, it must return a page that contains the string `Hello World!`.
- The redirection must be a "301 Moved Permanently".
- Create a Puppet manifest that automatically configures an Ubuntu machine to meet the above requirements.

## Resources

Read or watch:

- How the web works
- Nginx
- How to Configure Nginx
- Child process concept page
- Root and subdomain
- HTTP requests
- HTTP redirection
- Not found HTTP response code
- Logs files on Linux
- RFC 7231 (HTTP/1.1)
- RFC 7540 (HTTP/2)

Man or help:

- `scp`
- `curl`

## Learning Objectives

At the end of this project, you should be able to explain to anyone, without the help of Google:

### General

- The main role of a web server.
- What a child process is and why web servers usually have parent processes and child processes.
- The main HTTP requests.
- What DNS stands for and its main role.
- DNS Record Types (A, CNAME, TXT, MX).
- HTTP status codes, including 301 (Moved Permanently).
- How to configure an Nginx web server.
- Automation with Bash scripts and Puppet manifests.

## Getting Started

Follow the steps below to get started with this project:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0C-web_server
   ```

2. Change to the project directory:

   ```bash
   cd 0x0C-web_server
   ```

## Usage

Detailed instructions on how to use and run the scripts for each task can be found in the respective task sections above.

## Files

Here is a list of the main files in this project:

- `0-transfer_file` - Bash script for transferring a file to your server.
- `1-install_nginx_web_server` - Bash script to install Nginx web server.
- `2-setup_a_domain_name` - Contains the domain name (e.g., `myschool.tech`).
- `3-redirection` - Bash script for configuring

 redirection on Nginx.
- `4-not_found_page_404` - Bash script for configuring a custom 404 page on Nginx.
- `7-puppet_install_nginx_web_server.pp` - Puppet manifest for installing and configuring Nginx web server.
- `README.md` - This README file.

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)

## Copyright

© 2023 ALX, All rights reserved.