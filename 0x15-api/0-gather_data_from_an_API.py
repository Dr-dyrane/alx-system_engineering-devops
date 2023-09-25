#!/usr/bin/python3
"""
Returns TODO list progress information for a given employee ID from a REST API.

Usage:
    ./0-gather_data_from_an_API.py <employee_id>
"""

import requests
import sys


def get_employee_todo_progress(employee_id):
    """
    Retrieves and displays the TODO list progress for a specific employee.

    Args:
        employee_id (int): The ID of the employee to retrieve data for.

    Returns:
        None
    """
    base_url = "https://jsonplaceholder.typicode.com/"
    user_response = requests.get(base_url + "users/{}".format(employee_id))
    todos_response = requests.get(base_url + "todos",
                                  params={"userId": employee_id})

    if user_response.status_code != 200:
        print("Error: Employee not found")
        return

    user_data = user_response.json()
    todos_data = todos_response.json()

    completed_tasks = [task for task in todos_data if task["completed"]]
    total_tasks = len(todos_data)

    print("Employee {} is done with tasks({}/{}):".format(
        user_data.get("name"), len(completed_tasks), total_tasks))

    for task in completed_tasks:
        print("\t {}".format(task.get("title")))


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: ./0-gather_data_from_an_API.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    get_employee_todo_progress(employee_id)
