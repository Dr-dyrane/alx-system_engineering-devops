#!/usr/bin/python3
"""Reddit API keyword counter"""


import requests


def fetch_posts(subreddit, after=""):
    """
    Fetches hot articles from a subreddit.

    Args:
        subreddit (str): The subreddit name.
        after (str): The 'after' parameter for pagination.

    Returns:
        dict: JSON response containing post data or None on error.
    """
    s = subreddit
    url = f"https://www.reddit.com/r/{s}/hot.json?limit=100&after={after}"
    headers = {"User-Agent": "my-app/0.0.1"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        return response.json()
    else:
        print(f"Error: Failed to fetch data for subreddit '{subreddit}'.")
        return None


def count_occurrences(title, word_list):
    """
    Counts the occurrences of keywords in a title.

    Args:
        title (str): The post title.
        word_list (list): List of keywords to count.

    Returns:
        dict: Dictionary of keyword counts.
    """
    word_count = {word.lower(): 0 for word in word_list}

    for word in title.lower().split():
        if word in word_count:
            word_count[word] += 1

    return word_count


def consolidate_counts(counts):
    """
    Consolidates keyword counts, summing duplicates.

    Args:
        counts (list): List of dictionaries containing keyword counts.

    Returns:
        dict: Consolidated keyword counts.
    """
    consolidated = {}

    for count in counts:
        for word, value in count.items():
            if word in consolidated:
                consolidated[word] += value
            else:
                consolidated[word] = value

    return consolidated


def print_sorted_counts(counts):
    """
    Prints sorted keyword counts.

    Args:
        counts (dict): Dictionary of keyword counts.
    """
    sorted_counts = sorted(counts.items(), key=lambda x: (-x[1], x[0]))

    for word, count in sorted_counts:
        print(f"{word}: {count}")


def count_words(subreddit, word_list, after=None):
    """
    Recursively queries the Reddit API,
    counts keywords, and prints sorted counts.

    Args:
        subreddit (str): The subreddit name.
        word_list (list): List of keywords to count.
        after (str): The 'after' parameter for pagination.
    """
    if after is None:
        after = ""

    posts = fetch_posts(subreddit, after)

    if posts is not None:
        counts = [
            count_occurrences(
                post['data']['title'], word_list
            )
            for post in posts['data']['children']
        ]

        if posts['data']['after']:
            counts.extend(
                count_words(subreddit, word_list, posts['data']['after'])
            )

        consolidated_counts = consolidate_counts(counts)
        print_sorted_counts(consolidated_counts)

    return counts


if __name__ == '__main__':
    import sys

    if len(sys.argv) < 3:
        print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
        print(
            "Ex: {} programming 'python java javascript'".format(sys.argv[0])
        )
    else:
        subreddit = sys.argv[1]
        keywords = sys.argv[2].split()
        count_words(subreddit, keywords)
