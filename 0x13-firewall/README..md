# 0x13. Firewall

## Overview

This project involves configuring a firewall for a web server and implementing port forwarding. The tasks are focused on enhancing server security and network functionality.

**Project start:** September 18, 2023, 6:00 AM  
**Project deadline:** September 19, 2023, 6:00 AM  
**Auto review:** Scheduled at the deadline

## Concepts

This project is centered around the following concept:

- Web stack debugging

## Background Context

In this project, you will work with firewalls and networking. Firewalls play a crucial role in securing servers and controlling network traffic. Additionally, you'll learn about port forwarding and how to redirect traffic from one port to another.

## Resources

For this project, you may need to refer to the following resources:

- [What is a firewall](https://en.wikipedia.org/wiki/Firewall_(computing))
- More Info (additional resources related to firewalls)

## Using Telnet for Debugging

Telnet is a useful tool for checking if sockets are open and if services are reachable. You can use it to verify that ports are accepting connections. For example, to check if port 22 (SSH) is open on a server, you can use the following command:

```shell
telnet server_ip 22
```

If the connection is successful, you will see details about the SSH service. If it fails, you'll receive an error or no response.

## School Network and Firewalls

Please note that the school network filters outgoing connections using a network-based firewall. This might limit your ability to interact with certain ports on servers outside the school network. To test your configurations on web-01, perform the tests from outside the school network, such as from your web-02 server. When SSHing into your web-02 server, the traffic originates from web-02 and bypasses the school's firewall.

**Warning:** Be cautious when configuring firewalls. Blocking essential ports, such as port 22 for SSH, can result in losing remote access to your server.

## Tasks

### Task 0: Block All Incoming Traffic

**Requirements:**

- Configure the UFW (Uncomplicated Firewall) on web-01 to block all incoming traffic, except for the following TCP ports:
  - 22 (SSH)
  - 443 (HTTPS SSL)
  - 80 (HTTP)

**Submission:** Share the UFW commands used in your answer file.

### Task 1: Port Forwarding

**Requirements:**

- Configure web-01's firewall to redirect incoming traffic from port 8080/TCP to port 80/TCP.

**Submission:** Provide a copy of the UFW configuration file that you modified to enable port forwarding.

### Testing

You can verify your firewall and port forwarding configurations using tools like `telnet` and `curl`. Refer to the project instructions for testing details.

## Troubleshooting

If you encounter issues or errors, consult the troubleshooting section in the project instructions for guidance on resolving common problems.

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

Special thanks to the ALX team and the community for their support and resources.