# Employee Data Management with Python and API Integration

## Table of Contents
- [Description](#description)
- [Project Requirements](#project-requirements)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Tasks](#tasks)
  - [Task 0: Gather Data from an API](#task-0-gather-data-from-an-api)
  - [Task 1: Export to CSV](#task-1-export-to-csv)
  - [Task 2: Export to JSON](#task-2-export-to-json)
  - [Task 3: Dictionary of List of Dictionaries](#task-3-dictionary-of-list-of-dictionaries)
- [Project Structure](#project-structure)
- [Authors](#authors)
- [License](#license)

## Description

In the world of system administration and scripting, it's essential to have the ability to manage data efficiently and interface with external services like APIs. This project focuses on using Python to interact with an API and manage employee data. You will learn how to retrieve data from a REST API, process it, and export it in different formats such as CSV and JSON.

## Project Requirements

To successfully complete this project, you need to adhere to the following requirements:

### General

- **Editor**: You can use editors like vi, vim, or emacs for writing code.
- **Platform**: Your code will be interpreted/compiled on Ubuntu 20.04 LTS using Python 3.8.5.
- **File Structure**: All your Python files should end with a new line.
- **Shebang Line**: The first line of all your files should be `#!/usr/bin/python3`.
- **Library Imports**: Libraries imported in your Python files must be organized in alphabetical order.
- **README.md**: You must create a `README.md` file at the root of the project folder.
- **Code Style**: Your code should adhere to PEP 8 style guidelines, and you can use the `pycodestyle` tool to check this.
- **Executable Files**: All your Python files must be executable.
- **Documentation**: All your modules should have documentation (use `python3 -c 'print(__import__("my_module").__doc__)'` to check).
- **Dictionary Access**: Use `get` to access dictionary values by key (it won't throw an exception if the key doesn't exist).
- **Module Execution**: Your code should not be executed when imported (use `if __name__ == "__main__":`).

### Tasks

1. **Gather Data from an API**: Create a Python script that retrieves information about an employee's TODO list progress from a REST API.
2. **Export to CSV**: Extend the script from Task 1 to export data in CSV format.
3. **Export to JSON**: Extend the script from Task 1 to export data in JSON format.
4. **Dictionary of List of Dictionaries**: Extend the script from Task 1 to export data from all employees in a JSON format.

## Getting Started

### Prerequisites

Before you begin, make sure you have the following:

- Python 3.8.5 installed on your system.
- An understanding of how to run Python scripts in a Unix-based environment.

### Installation

1. Clone the project repository:

   ```bash
   git clone [repository_url]
   ```

2. Navigate to the project directory:

   ```bash
   cd 0x15-api
   ```

## Usage

To use this project, follow these steps:

1. Complete the tasks described in the subsequent sections.
2. Run the Python scripts for each task to interact with the API and export data in the required formats.

## Tasks

### Task 0: Gather Data from an API

- Create a Python script that retrieves employee TODO list progress from a REST API.
- The script should accept an integer as a parameter, which represents the employee ID.
- Display the employee TODO list progress in the specified format.
- You can use the `urllib` or `requests` module to make API requests.

### Task 1: Export to CSV

- Extend the script from Task 0 to export data in CSV format.
- The CSV file should contain records of tasks owned by the specified employee.
- The format of each record should be: `"USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"`.
- Save the CSV file with the name: `USER_ID.csv`, where USER_ID is the ID of the employee.

### Task 2: Export to JSON

- Extend the script from Task 0 to export data in JSON format.
- The JSON file should contain records of tasks owned by the specified employee.
- The format should be a list of dictionaries, where each dictionary has the keys `"task"`, `"completed"`, and `"username"`.
- Save the JSON file with the name: `USER_ID.json`, where USER_ID is the ID of the employee.

### Task 3: Dictionary of List of Dictionaries

- Extend the script from Task 0 to export data in a JSON format that includes tasks from all employees.
- The format should be a dictionary where each key is a USER_ID, and the value is a list of dictionaries representing tasks.
- Each task dictionary should have the keys `"username"`, `"task"`, and `"completed"`.
- Save the JSON file with the name: `todo_all_employees.json`.

## Project Structure

The project structure is organized as follows:

```
0x15-api/
│
├── 0-gather_data_from_an_API.py
├── 1-export_to_CSV.py
├── 2-export_to_JSON.py
├── 3-dictionary_of_list_of_dictionaries.py
├── README.md
└── ... (other project files)
```

## Authors

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)

## License

This project is licensed under the [MIT License](LICENSE).
