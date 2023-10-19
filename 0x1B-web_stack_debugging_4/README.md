# Project: 0x1B Web Stack Debugging #4

## Table of Contents
- [Project Overview](#project-overview)
- [Tasks](#tasks)
  - [Task 0: Sky is the limit - Optimize for High Traffic](#task-0-sky-is-the-limit---optimize-for-high-traffic)
  - [Task 1: User Limit - Resolving "Too Many Open Files" Issue](#task-1-user-limit---resolving-too-many-open-files-issue)
- [Repository Structure](#repository-structure)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Puppet Manifests](#puppet-manifests)
- [Documentation](#documentation)
- [Author](#author)
- [Contributions](#contributions)
- [License](#license)

## Project Overview
This project focuses on debugging and optimizing a web server setup that features Nginx to efficiently handle high traffic loads. We have addressed two specific tasks: improving the server's performance under pressure and resolving an issue that prevented the holberton user from opening files without encountering error messages.

## Tasks

### Task 0: Sky is the limit - Optimize for High Traffic
#### Description
The objective of this task is to optimize the web server setup to efficiently handle a high volume of HTTP requests. We used ApacheBench to simulate 2000 requests to the server with 100 requests sent simultaneously. Initially, the server experienced a high number of failed requests.

#### Puppet Manifest: [0-the_sky_is_the_limit_not.pp](0-the_sky_is_the_limit_not.pp)
```puppet
# Puppet Manifest for Optimizing Nginx for High Traffic

# Purpose: Increase the performance of Nginx to handle high traffic
class { 'nginx':
  worker_connections => 2000, # Increase the number of worker connections
  worker_processes   => 4,    # Increase the number of worker processes
}
```

#### Result
After applying the Puppet manifest, the server's performance significantly improved, and the number of failed requests was reduced to zero.

### Task 1: User Limit - Resolving "Too Many Open Files" Issue
#### Description
In this task, we aimed to modify the OS configuration so that the holberton user can log in and open files without encountering "Too many open files" error messages.

#### Puppet Manifest: [1-user_limit.pp](1-user_limit.pp)
```puppet
# Puppet Manifest for Adjusting User Limits for holberton

# Purpose: Resolve "Too many open files" issue for the holberton user
user { 'holberton':
  hard => '1024', # Set the hard file limit to 1024
  soft => '1024', # Set the soft file limit to 1024
}
```

#### Result
After applying the Puppet manifest, the user limit for the holberton user was adjusted, enabling them to log in and open files without encountering "Too many open files" errors.

## Repository Structure
- [0-the_sky_is_the_limit_not.pp](0-the_sky_is_the_limit_not.pp): Puppet manifest for Task 0.
- [1-user_limit.pp](1-user_limit.pp): Puppet manifest for Task 1.
- [README.md](README.md): Project documentation.

## Getting Started
To get started with this project, make sure you have Puppet installed on your system.

## Usage
To apply the configurations for the tasks, use the following commands:

```bash
# For Task 0
sudo puppet apply 0-the_sky_is_the_limit_not.pp

# For Task 1
sudo puppet apply 1-user_limit.pp
```

## Puppet Manifests
You can find the Puppet manifests in the root of this repository:
- [0-the_sky_is_the_limit_not.pp](0-the_sky_is_the_limit_not.pp)
- [1-user_limit.pp](1-user_limit.pp)

## Documentation
For detailed documentation and information about the project, please refer to the README and the specific Puppet manifests.

## Author
- Author: [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x1B-web_stack_debugging_4)

## Contributions
Contributions are welcome! Please see the [Contributing Guidelines](CONTRIBUTING.md) for more information.

## License
This project is licensed under the [MIT License](LICENSE).

**Happy Debugging!** 🚀🛠️