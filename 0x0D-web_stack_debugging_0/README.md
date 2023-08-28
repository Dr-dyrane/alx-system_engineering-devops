# Web stack debugging #0

## Table of Contents
* [Project Description](#project-description)
* [Tasks](#tasks)
  * [Task 0: Give me a page!](#task-0-give-me-a-page)
* [Getting Started](#getting-started)
* [Usage](#usage)
* [Author](#author)

## Project Description

This project is part of the Holberton School curriculum and focuses on the art of debugging web stacks. The goal is to fix issues in a given web stack to make it work correctly. Debugging is an essential skill for Full-Stack Software Engineers, and this project aims to improve those debugging skills.

## Tasks

### Task 0: Give me a page!

In this task, the goal is to get Apache to run on a Docker container and return a page containing "Hello Holberton" when querying the root of the container.

### Getting Started

To get started with this project, you will need Docker installed on your machine. If you don't have Docker installed, you can refer to the provided resources to install it.

### Usage

1. Clone this repository to your local machine.
2. Navigate to the project directory.

#### Task 0: Give me a page!

To run the Docker container and fix the issue, use the following command:

```bash
docker run -p 8080:80 -d -it holbertonschool/265-0
```

After running the container, check if it returns the expected page by using curl:

```bash
curl 0:8080
```

### Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0D-web_stack_debugging_0)
