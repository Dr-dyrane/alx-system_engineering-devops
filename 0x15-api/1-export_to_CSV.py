#!/usr/bin/python3
"""
Exports TODO list information for a given employee ID to CSV format.

Usage:
    ./1-export_to_CSV.py <employee_id>
"""

import csv
import requests
import sys


def export_to_csv(employee_id):
    """
    Exports employee's TODO list information to a CSV file.

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

    with open("{}.csv".format(employee_id), "w", newline="") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for task in todos_data:
            writer.writerow([employee_id, username, str(task["completed"]),
                             task["title"]])


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: ./1-export_to_CSV.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    export_to_csv(employee_id)
