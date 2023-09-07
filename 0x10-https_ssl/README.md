# HTTPS SSL Configuration Project

## Table of Contents
- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
- [Files](#files)
- [Usage](#usage)
  - [Task 0 - World Wide Web](#task-0---world-wide-web)
  - [Task 1 - HAProxy SSL Termination](#task-1---haproxy-ssl-termination)
- [Examples](#examples)
- [Tasks](#tasks)
  - [Task 0 - World Wide Web](#task-0---world-wide-web-1)
  - [Task 1 - HAProxy SSL Termination](#task-1---haproxy-ssl-termination-1)
  - [Task 2 - No Loophole in Your Website Traffic (Advanced)](#task-2---no-loophole-in-your-website-traffic-advanced)
- [Additional Information](#additional-information)
  - [DNS Configuration](#dns-configuration)
  - [Web Stack Debugging](#web-stack-debugging)
- [Author](#author)

## Introduction
This project is aimed at configuring HTTPS SSL termination using HAProxy, ensuring the secure communication of web traffic. It covers the setup of SSL certificates, HAProxy configuration for SSL termination, and the redirection of HTTP traffic to HTTPS. The project also includes tasks related to DNS configuration and web stack debugging.

## Getting Started
Before proceeding with the tasks in this project, make sure you have the following prerequisites in place:

### Prerequisites
- Ubuntu 16.04 LTS server environment.
- Access to the specified servers with appropriate permissions.
- Basic knowledge of DNS configuration, HAProxy, and SSL certificates.

## Files
Here's a brief overview of the files included in this project:

1. `0-world_wide_web`: Bash script for auditing subdomains of a domain.
2. `1-haproxy_ssl_termination`: HAProxy configuration file for SSL termination.
3. `100-redirect_http_to_https`: HAProxy configuration file for redirecting HTTP traffic to HTTPS.

## Usage
### Task 0 - World Wide Web
To audit subdomains of a domain, run the `0-world_wide_web` script with the following syntax:
```bash
./0-world_wide_web domain [subdomain]
```
- `domain`: The domain name to audit.
- `subdomain` (optional): Specific subdomain to audit.

### Task 1 - HAProxy SSL Termination
This task sets up HAProxy for SSL termination. After configuring HAProxy, you can check SSL termination by using `curl` as shown in the example provided.

## Examples
Here are some examples of how to use the scripts and configurations in this project:

**Task 0: Auditing Subdomains**
```bash
./0-world_wide_web holberton.online
./0-world_wide_web holberton.online web-02
```

**Task 1: HAProxy SSL Termination**
```bash
# Example to check if SSL termination is working
curl -sI https://www.holberton.online
```

## Tasks
### Task 0 - World Wide Web
- Configure your domain zone for subdomains.
- Create a Bash script to audit subdomains.
- Display information about subdomains.

### Task 1 - HAProxy SSL Termination
- Create a certificate using Certbot.
- Configure HAProxy for SSL termination.
- Serve encrypted traffic with Holberton School content.

### Task 2 - No Loophole in Your Website Traffic (Advanced)
- Configure HAProxy to automatically redirect HTTP traffic to HTTPS.

## Additional Information
### DNS Configuration
To successfully complete the tasks in this project, you may need to configure your DNS settings for subdomains. Ensure that subdomains are correctly pointing to the intended IP addresses.

### Web Stack Debugging
Debugging web stack issues may be necessary during the project. Familiarize yourself with common web server debugging techniques and tools to troubleshoot any problems that arise.

## Author
Author: [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x10-https_ssl)