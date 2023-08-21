# Attack is the Best Defense

[Repository](https://github.com/Dr-dyrane/alx-system_engineering-devops/attack_is_the_best_defense)

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)

## Table of Contents

- [Introduction](#introduction)
- [Project Description](#project-description)
- [Project Tasks](#project-tasks)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project is an optional exploration of network security and ethical hacking concepts. It provides hands-on experience with network sniffing, dictionary attacks, and other security-related tasks. The goal is to gain practical knowledge in these areas and understand how to protect against potential threats.

## Project Description

- **Project Start Date**: August 21, 2023, 6:00 AM
- **Project End Date**: September 4, 2023, 6:00 AM
- **Checker Release Date**: August 24, 2023, 6:00 PM

This project is entirely optional but offers significant benefits in terms of learning and skill development. It covers the following concepts:

- Network basics
- Docker
- Network sniffing
- ARP spoofing
- Dictionary attacks

**Disclaimer**: This project involves ethical hacking and should only be performed in a controlled environment or with proper authorization.

## Project Tasks

### 0. ARP Spoofing and Sniffing Unencrypted Traffic

**Description:**
In this advanced task, we explore the realm of network security and the dangers of unencrypted traffic. The project aims to shed light on the importance of secure communication over networks, as even today, some legacy systems continue to use unencrypted means of communication, making them vulnerable to attacks.

**Background:**
Network security is a crucial aspect of overall security. Networks transmit sensitive information that, if intercepted by malicious actors, can lead to data breaches, including the exposure of email passwords and credit card information. Even with modern security measures in place, legacy systems may still use unencrypted communication methods, such as Telnet.

**Implementation:**
In this project, we focus on sniffing unencrypted traffic and extracting information from it. The target is SendGrid, an email service that supports both secure and unsecured methods of sending emails. We will emulate the process of sending an email using Telnet and use a script called `user_authenticating_into_server` to perform authentication.

**Task Steps:**
1. Execute the `user_authenticating_into_server` script locally on your Ubuntu or Linux-based machine.
2. Use `tcpdump` to sniff the network traffic and find the password used for authentication.
3. Paste the discovered password in your answer file.

**Important Note:**
You may encounter "Authentication failed: Bad username / password" in the `tcpdump` trace. This is normal because the user has been removed from the SendGrid account. The goal is to demonstrate the sniffing process, and the password can't be verified via SendGrid.

### 1. Dictionary Attack

**Description:**
This advanced task focuses on password-based authentication systems and the vulnerability they pose to dictionary attacks. By conducting a dictionary attack, we aim to show how easily such systems can be compromised.

**Background:**
Password-based authentication systems are susceptible to dictionary attacks, where an attacker tries a large number of possible passwords to gain unauthorized access. This task simulates such an attack on an SSH account.

**Implementation:**
To perform this task, we set up a Docker container running an SSH service and attempt to brute-force the account named "sylvain" using a dictionary of potential passwords. The password is expected to be 11 characters long.

**Task Steps:**
1. Install Docker on your Ubuntu machine.
2. Pull and run the Docker image `sylvainkalache/264-1` with the provided command, exposing port 2222.
3. Obtain or create a password dictionary.
4. Install and use Hydra to execute a dictionary attack on the SSH account "sylvain" within the Docker container. The attack should target IP 127.0.0.1 and port 2222.
5. Once you successfully find the password, share it in your answer file.

These tasks are meant for educational purposes, and it's crucial to perform them responsibly and only in environments where you have proper authorization. Ethical considerations and respect for privacy and security are paramount.

## Prerequisites

Before you begin, ensure you have the following:

- Ubuntu or a Linux-based machine
- Docker installed on your machine
- Basic knowledge of networking concepts and security

## Installation

To get started, follow these installation instructions:

1. Clone the project repository:

   ```bash
   git clone https://github.com/Dr-dyrane/alx-system_engineering-devops.git
   ```

2. Navigate to the project directory:

   ```bash
   cd alx-system_engineering-devops/attack_is_the_best_defense
   ```

3. Execute the tasks as described in the project tasks section.

## Usage

Detailed usage instructions for each task can be found in their respective directories within the project.

## Contributing

Contributions to this project are welcome. If you have improvements or suggestions, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
