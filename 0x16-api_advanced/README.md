# 0x16. API Advanced

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Python](https://img.shields.io/badge/python-3.8%2B-blue.svg)

By: Alexander Udeogaranya ([GitHub](https://github.com/Dr-dyrane/alx-system_engineering-devops/tree/master))

## Project Overview

This project is designed to help you gain expertise in working with APIs. Whether for technical interviews or personal use cases, mastering API interactions is essential. To practice, we'll focus on the Reddit API, which offers various endpoints and doesn't require authentication for most features.

## Project Schedule

- Project Start: October 10, 2023, 6:00 AM
- Project End: October 11, 2023, 6:00 AM
- Checker Release: October 10, 2023, 12:00 PM
- Auto Review Deadline: Project End

## Background Context

API-related questions are common in interviews, ranging from simple tasks like querying an endpoint to complex challenges involving recursion and data manipulation. Reddit API is an excellent choice for practice due to its rich features and accessible endpoints.

## Resources

Read or watch:

- [Reddit API Documentation](https://www.reddit.com/dev/api)
- [Query String](https://www.reddit.com/wiki/search)

## Learning Objectives

By the end of this project, you should be able to explain:

### General
- How to read API documentation to find specific endpoints.
- How to use an API with pagination.
- How to parse JSON results from an API.
- How to make a recursive API call.
- How to sort a dictionary by value.

## Copyright and Plagiarism

You are responsible for developing solutions for the project tasks yourself, as plagiarism is strictly forbidden and will result in program removal.

## Requirements

### General
- Allowed editors: vi, vim, emacs
- Code interpretation/compilation on Ubuntu 20.04 LTS using Python 3.4.3
- All files should end with a newline
- The first line of all files should be `#!/usr/bin/python3`
- Libraries imported in Python files must be organized alphabetically
- A mandatory `README.md` file at the project's root folder
- Code should follow PEP 8 style
- All files must be executable
- Code length will be tested using `wc`
- All modules should have documentation (`python3 -c 'print(__import__("my_module").__doc__)'`)
- Use the Requests module for sending HTTP requests to the Reddit API

## Project Tasks

### 0. How many subs?
Write a function that queries the Reddit API and returns the number of subscribers (total subscribers, not active users) for a given subreddit. If an invalid subreddit is provided, the function should return 0.

Requirements:
- Prototype: `def number_of_subscribers(subreddit)`
- If not a valid subreddit, return 0.

### 1. Top Ten
Write a function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.

Requirements:
- Prototype: `def top_ten(subreddit)`
- If not a valid subreddit, print None.

### 2. Recurse it!
Write a recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None.

Requirements:
- Prototype: `def recurse(subreddit, hot_list=[])`
- If not a valid subreddit, return None.

### 3. Count it! (Advanced)
Write a recursive function that queries the Reddit API, parses the title of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces). Results should be printed in descending order by count, and if counts are the same for separate keywords, they should be sorted alphabetically.

Requirements:
- Prototype: `def count_words(subreddit, word_list)`
- Words with no matches should be skipped and not printed.
- If no posts match or the subreddit is invalid, print nothing.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

If you found inspiration or guidance from other sources or individuals during this project, acknowledge them here.

---

By following this README, you can navigate the project effectively, understand its goals and requirements, and contribute effectively.
