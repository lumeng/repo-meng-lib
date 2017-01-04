def distinct_pair(n):
    """For a given integer n, return all unordered pairs of distinct integers smaller than n."""
    result = {}
    for a in range(1, n+1):
        for b in range(a+1, n+1):
            result["%d,%d" % (a, b)] = (a, b)
    return result

print distinct_pair(4)
