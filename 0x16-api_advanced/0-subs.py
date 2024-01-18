#!/usr/bin/python3
"""
returns the number of subscribers of the Reddit API
"""

import requests


def number_of_subscribers(subreddit):
    """returns the number of subscribers of a subreddit"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'norman'}

    # Making the request with proper error handling
    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        response.raise_for_status()  # Raises an HTTPError if the HTTP request returned an unsuccessful status code
        data = response.json().get("data")
        return data.get("subscribers") if data else 0
    except requests.exceptions.HTTPError as errh:
        print("HTTP Error:", errh)
        return 0
    except requests.exceptions.RequestException as err:
        print("Request Error:", err)
        return 0


if __name__ == "__main__":
    # Example usage
    subreddit_name = "programming"
    result = number_of_subscribers(subreddit_name)
    print(result)  # Output should be the total number of subscribers for the given subreddit

    invalid_subreddit = "this_is_a_fake_subreddit"
    result_invalid = number_of_subscribers(invalid_subreddit)
    print(result_invalid)  # Output should be 0 for an invalid subreddit

