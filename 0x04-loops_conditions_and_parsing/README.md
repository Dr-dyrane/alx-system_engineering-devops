# Loops, Conditions, and Parsing

## Table of Contents

- [Introduction](#introduction)
- [Background Context](#background-context)
- [Resources](#resources)
- [Learning Objectives](#learning-objectives)
- [Installation](#installation)
- [Usage](#usage)
- [Files Description](#files-description)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

## Introduction

Welcome to the **Loops, Conditions, and Parsing** project! This project is created as part of the ALX Software Engineering Program and focuses on mastering the concepts of loops, conditions, and parsing in the realm of system engineering and DevOps. By exploring these topics, you will gain a deeper understanding of how to efficiently automate tasks and streamline processes.

This repository contains a collection of Bash script files, each addressing a specific task related to loops, conditions, and parsing. The tasks range from simple loop iterations to more advanced parsing and conditional statements. The scripts are designed to provide hands-on practice and enhance your skills in these fundamental areas.

## Background Context

In this project, we will be working with loops, conditions, and parsing in Bash scripting. It is important to have a good understanding of these concepts as they form the foundation for automating tasks and creating efficient scripts. This background context will help you grasp the purpose and significance of the tasks involved in this project.

## Resources

Before starting this project, it is recommended to go through the following resources:

- [Loops sample](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
- [Variable assignment and arithmetic](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_05.html)
- [Comparison operators](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)
- [File test operators](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_03.html)
- [Make your scripts portable](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_02.html)

For more information, refer to the manual pages or use the `help` command:

- `man env`
- `man cut`
- `man for`
- `man while`
- `man until`
- `man if`

## Learning Objectives

By completing this project, you will gain a solid understanding of the following concepts:

- Creating SSH keys
- Advantages of using `#!/usr/bin/env bash` over `#!/bin/bash`
- Working with `while`, `until`, and `for` loops
- Using `if`, `else`, `elif`, and `case` condition statements
- Utilizing the `cut` command
- Understanding file and other comparison operators

## Installation

To get started with this project, follow the steps below:

1. Clone the repository:

   ```bash
   git clone https://github.com/Dr-dyrane/alx-system_engineering-devops.git
   ```

2. Navigate to the project directory:

   ```bash
   cd alx-system_engineering-devops/0x04-loops_conditions_and_parsing
   ```

3. Ensure you have Bash installed on your system. You can verify this by running the following command:

   ```bash
   bash --version
   ```

4. Make the script files executable using the `chmod` command:
   ```bash
   chmod u+x *
   ```

## Usage

In this project, each task has its own Bash script file. To run a specific script and observe its output, use the following command:

```bash
./<script_name>
```

For example, to execute the script for Task 1, use:

```bash
./1-for_school_loop
```

Refer to the individual script files and their respective README sections for more detailed instructions and examples.

## Files Description

Here is a brief description of the files in this project:

1. `0-RSA_key_pair.pub`: Generates an RSA key pair using the `ssh-keygen` command and saves the public key to `0-RSA_public_key.pub`.

2. `1-for_school_loop`: Uses a `for` loop to display the phrase "Best School" ten times.

3. `2-while_school_loop`: Uses a `while` loop to display the phrase "Best School" ten times.

4. `3-until_school_loop`: Uses an `until` loop to display the phrase "Best School" ten times.

5. `4-9_say_hi`: Uses a `while` loop and an `if` statement to display "Best School" ten times, with "Hi" printed on the ninth iteration.

6. `5-4_bad_luck_8_is_your_chance`: Uses a `while` loop and `if`, `elif`, and `else` statements to display different messages based on the loop iteration.

7. `6-superstitious_numbers`: Uses a `while` loop and a `case` statement to display different messages based on the loop iteration.

8. `7-clock`: Uses a `while` loop to display hours from 0 to 12 and minutes from 1 to 59.

9. `8-for_ls`: Uses a `for` loop to display the content of the current directory in a list format,

showing only the part of the name after the first dash.

10. `9-to_file_or_not_to_file`: Uses `if` and `else` statements to check the existence, emptiness, and regularity of a file, displaying different messages based on the conditions.

11. `10-fizzbuzz`: Uses a `for` loop to display numbers from 1 to 100, replacing certain numbers with "Fizz," "Buzz," or "FizzBuzz" based on divisibility.

12. `100-read_and_cut`: Uses a `while` loop and the `read` command to display specific information from the `/etc/passwd` file.

## Requirements

To ensure smooth execution of the scripts and successful completion of the tasks, please adhere to the following requirements:

- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- You are not allowed to use `awk`
- Your Bash script must pass Shellcheck (version 0.7.0) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Contributing

Contributions to this project are welcome and encouraged. If you encounter any issues, have suggestions for improvements, or would like to add new features, feel free to open an issue or submit a pull request. Let's collaborate and make this project even better!

## License

This project is licensed under the [MIT License](LICENSE). Feel free to modify and distribute it as per the terms of this license.

## Author

This project was created by [Alexander Udeogaranya](https://github.com/Dr-dyrane) as part of the ALX Software Engineering Program.
