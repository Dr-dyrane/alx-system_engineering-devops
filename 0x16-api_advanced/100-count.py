#!/usr/bin/python3
"""Reddit API"""


import requests


def count_words(subreddit, word_list, after=None, word_counts=None):
    """
    Recursively count occurrences of words in hot articles on a subreddit.

    :param subreddit: The subreddit to search.
    :param word_list: List of words to count occurrences of.
    :param after: Reddit API 'after' parameter for pagination.
    :param word_counts: Dictionary to store word counts.
    """
    if word_counts is None:
        word_counts = {}  # Initialize word counts dictionary

    # Base case: if after is None, print and return sorted results
    if after is None:
        sorted_counts = sorted(
            word_counts.items(), key=lambda x: (-x[1], x[0].lower())
        )
        for word, count in sorted_counts:
            print(f"{word.lower()}: {count}")
        return

    # Make an API request to fetch hot articles
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': 'YourUserAgent'}
    params = {'after': after}
    response = requests.get(
        url, headers=headers, params=params, allow_redirects=False
    )

    if response.status_code == 200:
        data = response.json()

        # Iterate through each article
        for article in data['data']['children']:
            title_words = article['data']['title'].lower().split()

            # Iterate through the words in the title
            for word in title_words:
                # Check if the word matches any word in the word_list
                for target_word in word_list:
                    if target_word.lower() == word:
                        word_counts[target_word] = word_counts.get(
                            target_word, 0
                        ) + 1

        # Recursive call with the 'after' parameter to fetch the next page
        after = data['data']['after']
        count_words(subreddit, word_list, after, word_counts)


if __name__ == "__main__":

    import sys

    if len(sys.argv) < 3:
        print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
        print(
            "Ex: {} programming 'python java javascript'".format(sys.argv[0])
        )
    else:
        subreddit = sys.argv[1]
        word_list = sys.argv[2].lower().split()
        count_words(subreddit, word_list)
