# Load Balancer

Author: [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0F-load_balancer)

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [Task 0: Double the Number of Webservers](#task-0-double-the-number-of-webservers)
  - [Task 1: Install Your Load Balancer](#task-1-install-your-load-balancer)
  - [Task 2: Add a Custom HTTP Header with Puppet](#task-2-add-a-custom-http-header-with-puppet)
- [Author](#author)

## Background Context

You have been given 2 additional servers:

- `gc-[STUDENT_ID]-web-02-XXXXXXXXXX`
- `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`

The goal of this project is to improve the web stack by adding redundancy to the web servers. This will increase the capacity to handle traffic and enhance infrastructure reliability. If one web server fails, there will be a second one to handle requests.

## Resources

Before starting the tasks, consider reviewing the following concepts:

- Load balancer
- Web stack debugging

## Requirements

**General:**

- Allowed editors: vi, vim, emacs
- All files will be interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A README.md file, at the root of the folder, is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any errors
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script does

**Your Servers:**

| Name            | Username | IP              | State   |
|-----------------|----------|------------------|---------|
| 294840-web-01   | ubuntu   | 100.24.236.109  | running |
| 294840-web-02   | ubuntu   | 52.91.122.190   | running |
| 294840-lb-01    | ubuntu   | 100.26.161.222  | running |

## Tasks

### Task 0: Double the Number of Webservers

In this task, you need to configure `web-02` to be identical to `web-01`. Automation is essential, so make use of the Bash script created during the web server project. Additionally, configure Nginx to include a custom response header `X-Served-By` that contains the hostname of the server.

**Requirements:**

- Configure Nginx to include the custom header on `web-01` and `web-02`.
- The custom HTTP header must be named `X-Served-By`.
- The value of the custom HTTP header must be the hostname of the server Nginx is running on.

**Script Name:** `0-custom_http_response_header`

**Example Usage:**

```bash
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
```

### Task 1: Install Your Load Balancer

In this task, you'll install and configure HAproxy on `lb-01`. HAproxy should distribute traffic evenly between `web-01` and `web-02` using a round-robin algorithm. Ensure that HAproxy can be managed via an init script.

**Requirements:**

- Configure HAproxy to distribute traffic to `web-01` and `web-02`.
- Use a round-robin algorithm for load balancing.
- Ensure HAproxy can be managed via an init script.

**Script Name:** `1-install_load_balancer`

**Example Usage:**

```bash
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
...
X-Served-By: 03-web-01
...
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
...
X-Served-By: 03-web-02
...
```

### Task 2: Add a Custom HTTP Header with Puppet (Advanced)

In this advanced task, automate the creation of a custom HTTP header response, similar to Task 0, but using Puppet.

**Requirements:**

- The custom HTTP header must be named `X-Served-By`.
- The value of the custom HTTP header must be the hostname of the server Nginx is running on.

**Puppet Script Name:** `2-puppet_custom_http_response_header.pp`

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0F-load_balancer)

For any questions or clarifications, please contact me at halodyrane@gmail.com.