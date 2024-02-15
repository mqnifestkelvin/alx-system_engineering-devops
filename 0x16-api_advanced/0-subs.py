#!/usr/bin/python3
'''Get number of reddit channel subscribers'''


def number_of_subscribers(subreddit):
    """Return the total number of subscribers on a given subreddit.
    If the subreddit is invalid, returns 0."""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        try:
            results = response.json().get("data")
            subscribers = results.get("subscribers", 0)
            return subscribers
        except ValueError:
            return 0
    else:
        return 0