#!/usr/bin/python3
"""
Exports TODO list information for a given employee ID to JSON format.

Usage:
    ./2-export_to_JSON.py <employee_id>
"""

import json
import requests
import sys


def export_to_json(employee_id):
    """
    Exports employee's TODO list information to a JSON file.

    Args:
        employee_id (int): The ID of the employee to export data for.

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
    username = user_data.get("username")
    todos_data = todos_response.json()

    with open("{}.json".format(employee_id), "w") as jsonfile:
        json.dump({employee_id: [{
            "task": task["title"],
            "completed": task["completed"],
            "username": username
        } for task in todos_data]}, jsonfile)


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: ./2-export_to_JSON.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    export_to_json(employee_id)
