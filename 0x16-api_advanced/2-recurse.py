#!/usr/bin/python3
"""
    Recursively queries the Reddit API to get
    titles of all hot articles for a subreddit.
"""


import requests


def recurse(subreddit, hot_list=[], after=None):
    """
    Recursively queries the Reddit API to get
    titles of all hot articles for a subreddit.

    Args:
        subreddit (str): The subreddit name.
        hot_list (list): List to store the titles.
        after (str): The 'after' parameter for pagination.

    Returns:
        list: List containing titles of hot articles for the subreddit,
        or None if not found or invalid.
    """
    s = subreddit
    u = f"https://www.reddit.com/r/{s}/hot.json?limit=100&after={after}"
    # Set a custom User-Agent to avoid Too Many Requests errors
    headers = {"User-Agent": "my-app/0.0.1"}
    response = requests.get(u, headers=headers)

    if response.status_code == 200:
        data = response.json()
        hot_posts = data['data']['children']
        for post in hot_posts:
            title = post['data']['title']
            hot_list.append(title)

        after = data['data']['after']
        if after:
            return recurse(subreddit, hot_list, after)
        else:
            return hot_list
    else:
        return None
