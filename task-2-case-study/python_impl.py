def safe_divide(a, b):
    """
    Performs division only when the denominator is not zero.
    Returns None if division by zero is attempted.
    """
    if b == 0:
        return None

    return a / b


# Traditional tests

def test_safe_divide():
    # Normal cases
    assert safe_divide(10, 2) == 5
    assert safe_divide(9, 3) == 3

    # Edge case
    assert safe_divide(5, 0) is None

    print("All Python tests passed!")


if __name__ == "__main__":
    test_safe_divide()