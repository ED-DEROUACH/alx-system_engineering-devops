#!/usr/bin/python3
"""
Returns the number of subscribers of the Reddit API.
"""

import requests

def number_of_subscribers(subreddit):
    """
    Returns the number of subscribers of a subreddit.
    If the subreddit is invalid or the request fails, it returns 0.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'norman'}

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        response.raise_for_status()

        # Check if the subreddit exists in the response
        if 'subscribers' in response.json().get('data', {}):
            return response.json()['data']['subscribers']
        else:
            print(f"Subreddit '{subreddit}' not found.")
            return 0

    except requests.exceptions.HTTPError as http_err:
        print(f"HTTP error occurred: {http_err}")
        return 0
    except requests.exceptions.RequestException as req_err:
        print(f"Request error occurred: {req_err}")
        return 0

if __name__ == "__main__":
    # Example usage
    subreddit_name = "programming"
    result = number_of_subscribers(subreddit_name)
    print(result)  # Output should be the total number of subscribers for the given subreddit

    invalid_subreddit = "this_is_a_fake_subreddit"
    result_invalid = number_of_subscribers(invalid_subreddit)
    print(result_invalid)  # Output should be 0 for an invalid subreddit

