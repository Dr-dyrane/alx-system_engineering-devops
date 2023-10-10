#!/usr/bin/python3
"""Reddit API"""

import requests


def count_words(subreddit, word_list, after="", count=[]):
    """
    Recursively count occurrences of words in hot articles on a subreddit.

    :param subreddit: The subreddit to search.
    :param word_list: List of words to count occurrences of.
    :param after: Reddit API 'after' parameter for pagination.
    :param word_counts: Dictionary to store word counts.
    """
    if after == "":
        count = [0] * len(word_list)

    url = f"https://www.reddit.com/r/{subreddit}/hot.json".format(subreddit)
    request = requests.get(url,
                           params={'after': after},
                           allow_redirects=False,
                           headers={'user-agent': 'bhalut'})

    if request.status_code == 200:
        data = request.json()

        # Count words in each article
        count_words_in_articles(data['data']['children'], word_list, count)

        after = data['data']['after']
        if after is None:
            # Combine duplicates and print results
            combined_counts = combine_counts(word_list, count)
            sorted_counts = sorted(
                combined_counts.items(), key=lambda x: (-x[1], x[0].lower()))
            for word, count in sorted_counts:
                print(f"{word.lower()}: {count}")
        else:
            count_words(subreddit, word_list, after, count)


def combine_counts(word_list, count):
    """Combine duplicate words and lowercase them"""
    combined_counts = {}
    for i, word in enumerate(word_list):
        word_lower = word.lower()
        combined_counts[word_lower] = (
            combined_counts.get(word_lower, 0) + count[i])
    return combined_counts


def count_words_in_articles(articles, word_list, count):
    """Count words in articles"""
    for article in articles:
        title_words = article['data']['title'].split()
        for word in title_words:
            word_lower = word.lower()
            for i, target_word in enumerate(word_list):
                if target_word.lower() == word_lower:
                    count[i] += 1


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 3:
        print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
        print(
            "Ex: {} programming 'python java javascript'".format(sys.argv[0]))
    else:
        subreddit = sys.argv[1]
        word_list = sys.argv[2].split()
        count_words(subreddit, word_list)
