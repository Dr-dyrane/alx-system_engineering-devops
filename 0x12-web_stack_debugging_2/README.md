# Web Stack Debugging #2

This project focuses on debugging and optimizing a web server setup. It includes tasks that address user privileges and Nginx configuration.

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)

## Table of Contents

- [Task 0: Run software as another user](#task-0-run-software-as-another-user)
  - [Outline](#outline)
  - [Usage](#usage)
  - [Implementation](#implementation)
  - [Example](#example)

- [Task 1: Run Nginx as Nginx](#task-1-run-nginx-as-nginx)
  - [Outline](#outline-1)
  - [Usage](#usage-1)
  - [Implementation](#implementation-1)
  - [Example](#example-1)

- [Task 2: 7 lines or less (Advanced)](#task-2-7-lines-or-less-advanced)

---

## Task 0: Run software as another user

### Outline

The goal of this task is to create a Bash script that allows you to run a command (e.g., `whoami`) as another user. This enhances security by reducing the need for superuser privileges.

### Usage

To use the script, execute it with the desired username as an argument:

```bash
./0-iamsomeoneelse <username>
```

### Implementation

The script accepts one argument, which is the username of the user you want to run the command as. It uses the `sudo -u` command to execute the specified command as the target user.

### Example

```bash
$ ./0-iamsomeoneelse www-data
www-data
```

---

## Task 1: Run Nginx as Nginx

### Outline

In this task, the objective is to configure Nginx to run as the `nginx` user instead of the root user. Running Nginx with reduced privileges enhances server security.

### Usage

Execute the Bash script to configure Nginx:

```bash
./1-run_nginx_as_nginx
```

### Implementation

The script performs the following steps:
1. Modifies the Nginx configuration file (`nginx.conf`) to change the user to `nginx`.
2. Ensures that Nginx listens on port 8080.
3. Restarts Nginx to apply the changes.

### Example

```bash
$ ./1-run_nginx_as_nginx
Nginx user updated to 'nginx'.
Nginx now listens on port 8080.
Nginx restarted.
```

---

## Task 2: 7 lines or less (Advanced)

In this advanced task, a concise Bash script is provided to achieve the same Nginx configuration as in Task 1 but in seven lines or fewer.

---

**Note:** All scripts are designed for Ubuntu 20.04 LTS and should be executed with superuser privileges.

Author: [Alexander Udeogaranya](https://github.com/Dr-dyrane)