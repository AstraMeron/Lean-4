# Lean 4 Formal Verification Assignment

## Overview

This repository contains solutions for the Lean 4 Formal Verification assignment.

The assignment demonstrates the difference between traditional software testing and formal verification using Lean 4.


## Task 1: Propositional Logic Proofs

Folder:

```
task-1-logic-proofs/
```

This task contains 10 propositional logic theorems implemented and proven in Lean 4.

The proofs demonstrate basic logical reasoning using propositions, implications, conjunctions, disjunctions, and negation.


## Task 2: Formal Verification Case Study

Folder:

```
task-2-case-study/
```

This task compares traditional Python testing with Lean 4 formal verification.

### Case Study: Safe Division

The example focuses on preventing division-by-zero errors.

Files included:

- `python_impl.py`  
  A Python implementation of safe division with test cases.

- `LeanImpl.lean`  
  A Lean 4 implementation with mathematical proofs verifying correctness.

- `CASE_STUDY.md`  
  Explanation of why formal verification provides stronger guarantees than traditional testing.


## Technologies Used

- Lean 4
- Lake
- Python
- GitHub


## Key Concept

Traditional testing checks whether a program works for selected inputs.

Formal verification uses mathematical proofs to guarantee that a program satisfies its specification for all possible inputs that meet the given conditions.