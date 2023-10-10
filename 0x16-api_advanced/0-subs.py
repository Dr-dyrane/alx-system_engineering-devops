#!/usr/bin/python3
"""
    Queries the Reddit API to get the number of subscribers for a subreddit.
"""


import requests


def number_of_subscribers(subreddit):
    """
    Queries the Reddit API to get the number of subscribers for a subreddit.

    Args:
        subreddit (str): The subreddit name.

    Returns:
        int: The number of subscribers for the subreddit,
        or 0 if not found or invalid.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    # Set a custom User-Agent to avoid Too Many Requests errors
    headers = {"User-Agent": "my-app/0.0.1"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json()
        subscribers = data['data']['subscribers']
        return subscribers
    else:
        return 0
