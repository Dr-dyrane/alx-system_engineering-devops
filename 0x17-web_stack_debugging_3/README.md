# Web Stack Debugging #3

**Project by:** [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/tree/master/0x17-web_stack_debugging_3)

## Table of Contents
1. [Project Description](#project-description)
2. [Requirements](#requirements)
3. [Tasks](#tasks)
   - [0. Strace is your friend](#task-0-strace-is-your-friend)
4. [Getting Started](#getting-started)
5. [How to Run](#how-to-run)
6. [Project Structure](#project-structure)
7. [Implementation Details](#implementation-details)
   - [Debugging with Strace](#debugging-with-strace)
   - [Automating the Fix with Puppet](#automating-the-fix-with-puppet)
8. [Resources](#resources)
9. [License](#license)

## Project Description

In this project, you will be working on debugging a WordPress website running on a LAMP (Linux, Apache, MySQL, and PHP) stack. The goal is to identify and fix an issue that is causing Apache to return a 500 Internal Server Error. The debugging process will involve using `strace` to trace system calls and identify the root cause of the issue.

The project also requires you to automate the fix using Puppet, a configuration management tool. You will create a Puppet manifest that addresses the issue and ensures the web server is running correctly.

## Requirements

- All files will be interpreted on Ubuntu 14.04 LTS.
- All files should end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- Your Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Your Puppet manifests must run without errors.
- Your Puppet manifest files must end with the extension `.pp`.
- Files will be checked with Puppet v3.4.

## Tasks

### Task 0: Strace is your friend

**Objective:** Using `strace`, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet.

**Requirements:**

- Your `0-strace_is_your_friend.pp` file must contain Puppet code.
- You can use whatever Puppet resource type you want for your fix.

**Hint:**

- `strace` can attach to a currently running process.
- You can use `tmux` to run `strace` in one window and `curl` in another one.

## Getting Started

To get started with this project, you need access to an Ubuntu 14.04 LTS environment and the ability to install necessary packages and tools. You should also be familiar with using `strace` for system call tracing and have some knowledge of Puppet for automation.

## How to Run

Follow these steps to complete the project:

1. Clone the project repository from [GitHub](https://github.com/Dr-dyrane/alx-system_engineering-devops/tree/master/0x17-web_stack_debugging_3) to your Ubuntu 14.04 LTS environment.

2. Navigate to the project directory.

3. For Task 0, use `strace` to identify the issue causing the 500 error and fix it manually.

4. Create a Puppet manifest (`.pp` file) named `0-strace_is_your_friend.pp` to automate the fix. Make sure it passes `puppet-lint` without errors.

5. Apply the Puppet manifest using the `puppet apply` command to ensure the web server is running correctly.

6. Verify the fix by using `curl` to access the website and confirm that the 500 error is resolved.

## Project Structure

The project directory should have the following structure:

```
0x17-web_stack_debugging_3/
│
├── 0-strace_is_your_friend.pp
├── README.md
```

## Implementation Details

### Debugging with Strace

In Task 0, you will be using `strace` to trace system calls of the Apache process. This will help you identify the specific system call or operation that is causing the 500 Internal Server Error. Here are the high-level steps for debugging with `strace`:

1. Attach `strace` to the running Apache process.
2. Use `curl` or a web browser to access the WordPress website.
3. Analyze the `strace` output to identify the issue, such as file access, permission problems, missing libraries, etc.
4. Manually fix the issue to resolve the 500 error.

### Automating the Fix with Puppet

Once you have identified and fixed the issue in Task 0, the next step is to automate the fix using Puppet. Puppet is a configuration management tool that allows you to define the desired state of a system and apply changes automatically. Here's how to automate the fix:

1. Create a Puppet manifest file (e.g., `0-strace_is_your_friend.pp`).
2. In the manifest, define the resources and configurations required to fix the issue. This may include creating directories, setting permissions, installing packages, or modifying configuration files.
3. Use Puppet resource types to implement the necessary changes. For example, you can use the `file`, `package`, or `exec` resource types.
4. Ensure that your Puppet manifest adheres to best practices and does not produce any errors when checked with `puppet-lint`.
5. Apply the Puppet manifest using the `puppet apply` command to automatically apply the fix.

By automating the fix with Puppet, you ensure that the issue is resolved consistently and can be easily applied to multiple servers if needed.

## Resources

- [Puppet Documentation](https://puppet.com/docs/puppet/latest/puppet_index.html)
- [Ubuntu Documentation](https://help.ubuntu.com/)

## License

This project is licensed under the terms of the MIT License. See the [LICENSE](LICENSE) file for details.

**Copyright © 2023 ALX, All rights reserved.**