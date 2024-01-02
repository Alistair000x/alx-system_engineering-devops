#!/usr/bin/python3

import json
import requests
from sys import argv

if __name__ == "__main__":
    user_id = argv[1]
    url = "https://jsonplaceholder.typicode.com"

    user_response = requests.get(f"{url}/users/{user_id}")
    user_data = user_response.json()
    username = user_data.get("username")

    tasks_response = requests.get(f"{url}/todos?userId={user_id}")
    tasks_data = tasks_response.json()

    json_data = {user_id: []}
    for task in tasks_data:
        task_data = {
            "task": task.get("title"),
            "completed": task.get("completed"),
            "username": username
        }
        json_data[user_id].append(task_data)

    with open(f"{user_id}.json", "w") as json_file:
        json.dump(json_data, json_file)
