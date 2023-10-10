import requests


def count_words(subreddit, word_list, after=None):
    """
    Recursively queries the Reddit API, counts keywords,
    and prints sorted counts.

    Args:
        subreddit (str): The subreddit name.
        word_list (list): List of keywords to count.
        after (str): The 'after' parameter for pagination.

    Prints:
        Sorted counts of keywords in descending order.

    Note:
        Words with no matches will be skipped.
    """
    s = subreddit
    u = f"https://www.reddit.com/r/{s}/hot.json?limit=100&after={after}"
    # Set a custom User-Agent to avoid Too Many Requests errors
    headers = {"User-Agent": "my-app/0.0.1"}
    response = requests.get(u, headers=headers)

    if response.status_code == 200:
        data = response.json()
        hot_posts = data['data']['children']
        word_count = {}

        for post in hot_posts:
            title = post['data']['title'].lower()
            for word in word_list:
                if word.lower() in title:
                    if word in word_count:
                        word_count[word] += 1
                    else:
                        word_count[word] = 1

        after = data['data']['after']
        if after:
            return count_words(subreddit, word_list, after)
        else:
            sorted_word_count = sorted(
                word_count.items(), key=lambda x: (-x[1], x[0])
            )
            for word, count in sorted_word_count:
                print(f"{word}: {count}")
    else:
        print("None")
