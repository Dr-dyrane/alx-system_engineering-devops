#!/usr/bin/python3
"""
    Queries the Reddit API and prints
    the titles of the first 10 hot posts for a subreddit.
"""


import requests


def top_ten(subreddit):
    """
    Queries the Reddit API and prints
    the titles of the first 10 hot posts for a subreddit.

    Args:
        subreddit (str): The subreddit name.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    # Set a custom User-Agent to avoid Too Many Requests errors
    headers = {"User-Agent": "my-app/0.0.1"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json()
        top_posts = data['data']['children']
        for post in top_posts:
            title = post['data']['title']
            print(title)
    else:
        print("None")
