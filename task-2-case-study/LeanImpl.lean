namespace SafeDivision


def safeDivide (a b : Nat) : Option Nat :=
  if b = 0 then
    none
  else
    some (a / b)


-- Proof: dividing by zero always returns none
theorem safeDivide_zero (a : Nat) :
    safeDivide a 0 = none := by
  simp [safeDivide]


-- Proof: non-zero denominators always return a result
theorem safeDivide_nonzero (a b : Nat) (h : b ≠ 0) :
    safeDivide a b = some (a / b) := by
  simp [safeDivide, h]


end SafeDivision
