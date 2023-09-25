#!/usr/bin/python3
"""
Exports TODO list information for all employees to JSON format.

Usage:
    ./3-dictionary_of_list_of_dictionaries.py
"""

import json
import requests


def export_all_employees_to_json():
    """
    Exports TODO list information of all employees to a JSON file.

    Returns:
        None
    """
    base_url = "https://jsonplaceholder.typicode.com/"
    users_response = requests.get(base_url + "users")
    users_data = users_response.json()

    all_employee_tasks = {}

    for user in users_data:
        user_id = user["id"]
        username = user["username"]

        todos_response = requests.get(base_url + "todos",
                                      params={"userId": user_id})
        todos_data = todos_response.json()

        user_tasks = []

        for task in todos_data:
            user_tasks.append({
                "task": task["title"],
                "completed": task["completed"],
                "username": username
            })

        all_employee_tasks[user_id] = user_tasks

    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump(all_employee_tasks, jsonfile)


if __name__ == "__main__":
    export_all_employees_to_json()
