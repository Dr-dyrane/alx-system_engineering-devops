# Web Infrastructure Design Project

## Table of Contents

1. [Project Description](#project-description)
2. [Learning Objectives](#learning-objectives)
3. [Requirements](#requirements)
4. [Tasks](#tasks)
   - [Task 0: Simple Web Stack](#task-0-simple-web-stack)
   - [Task 1: Distributed Web Infrastructure](#task-1-distributed-web-infrastructure)
   - [Task 2: Secured and Monitored Web Infrastructure](#task-2-secured-and-monitored-web-infrastructure)
   - [Task 3: Scale Up](#task-3-scale-up)
5. [Authors](#authors)
6. [Repository](#repository)

## Project Description

This project focuses on designing various web infrastructure setups, ranging from a simple web stack with a single server to a distributed infrastructure with multiple servers and load balancers. The project aims to explore concepts like DNS, monitoring, web servers, load balancers, network basics, and server redundancy.

## Learning Objectives

By completing this project, you are expected to:

- Understand the components of a web infrastructure stack.
- Explain the role of each component in the infrastructure.
- Identify single points of failure (SPOF) in a system and understand how to avoid them.
- Know about high availability setups like active-active and active-passive clusters.
- Gain knowledge of HTTPS, firewalls, and database replication.
- Learn how to secure and monitor a web infrastructure.

## Requirements

- A README.md file at the root of the project folder is mandatory.
- Whiteboard each task and take a picture/screenshot of your diagram.
- Manually review each task.
- Submit a screenshot of the completed task and upload it to an image hosting service.
- Each task must be whiteboarded in front of a mentor, staff, or student.
- Use English for all documentation and explanations.

## Tasks

### Task 0: Simple Web Stack

A one-server web infrastructure design with a LAMP stack is required. The infrastructure should host a website accessible via www.foobar.com. Specifics about the infrastructure and the issues with it should be explained.

**Requirements:**

- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 application files (your code base)
- 1 database (MySQL)
- Domain name foobar.com configured with a www record pointing to your server IP 8.8.8.8

### Task 1: Distributed Web Infrastructure

Design a three-server web infrastructure that hosts the website www.foobar.com. Specifics about each additional element and the issues with the infrastructure should be explained.

**Requirements:**

- 2 servers
- 1 web server (Nginx)
- 1 application server
- 1 load balancer (HAproxy)
- 1 set of application files (your code base)
- 1 database (MySQL)

### Task 2: Secured and Monitored Web Infrastructure

Design a three-server web infrastructure for www.foobar.com that is secured, serves encrypted traffic, and is monitored. Explain the addition of each element and the issues with the infrastructure.

**Requirements:**

- 3 firewalls
- 1 SSL certificate for serving www.foobar.com over HTTPS
- 3 monitoring clients (data collectors for Sumologic or other monitoring services)

### Task 3: Scale Up (Advanced)

Split components (web server, application server, database) with their own servers, and set up a load balancer cluster. Explain the reasons for each additional element.

**Requirements:**

- 1 server for each component (web server, application server, database)
- 1 load balancer (HAproxy) configured as a cluster with the other one

## Authors

- Ukpono Umoren
- Alexander Udeogaranya

## Repository

GitHub repository: [alx-system_engineering-devops](https://github.com/Dr-dyrane/alx-system_engineering-devops/tree/main/0x09-web_infrastructure_design)

## Copyright - Plagiarism

Please be aware that plagiarism is strictly forbidden and will result in removal from the program. Ensure that you come up with original solutions for the tasks to meet the learning objectives.
