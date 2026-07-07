# Case Study: Formal Verification of a Safe Division Function

## Overview

Division is a common mathematical operation used in many software systems. However, attempting to divide by zero can cause errors, crashes, or unexpected behavior. In critical software systems, it is important to guarantee that invalid operations are handled correctly.

This case study compares a traditional Python implementation using automated testing with a formally verified Lean 4 implementation.


## Python Implementation and Testing

In Python, a safe division function can be implemented by checking whether the denominator is zero before performing the operation.

Example:

```python
def safe_divide(a, b):
    if b == 0:
        return None
    return a / b
```


To verify the implementation, we can write tests:

- Testing normal division cases.
- Testing the edge case where the denominator is zero.

Example:

```python
assert safe_divide(10, 2) == 5
assert safe_divide(5, 0) == None
```

These tests confirm that the function works for the selected examples. However, traditional testing has a limitation: it can only check inputs that were explicitly tested.

Since there are infinitely many possible input values, testing cannot guarantee that the function will behave correctly in every possible situation.


## Lean 4 Formal Verification

In Lean 4, the same safe division logic is implemented and mathematical proofs are created to verify its correctness.

The Lean implementation proves that:

- If the denominator is zero, the function always returns `none`.
- If the denominator is not zero, the function always returns the correct division result.

These properties are proven for all possible inputs, not only selected test cases.


## Why Formal Verification is Necessary

For ordinary applications, testing may be sufficient. However, in systems where correctness is critical, relying only on tests can leave hidden bugs undiscovered.

Formal verification provides stronger guarantees because Lean does not simply execute the program with sample inputs. Instead, it uses mathematical proofs to verify that the program satisfies its specification.

Once Lean accepts the proofs, the verified properties cannot fail unless the implementation or assumptions are changed.

Therefore, formal verification eliminates classes of bugs that traditional Python testing might miss by providing mathematical certainty rather than only experimental evidence.
