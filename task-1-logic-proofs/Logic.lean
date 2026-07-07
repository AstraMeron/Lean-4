namespace Exercises

variable (A B C D I L M P Q R : Prop)

theorem T51 (h1 : P) (h2 : P → Q) : P ∧ Q := by
  constructor
  · exact h1
  · apply h2
    exact h1

theorem T52 (h1 : P ∧ Q → R) (h2 : Q → P) (h3 : Q) : R := by
  apply h1
  constructor
  · apply h2
    exact h3
  · exact h3

theorem T53 (h1 : P → Q) (h2 : Q → R) : P → (Q ∧ R) := by
  intro hp
  constructor
  · apply h1
    exact hp
  · apply h2
    apply h1
    exact hp

theorem T54 (h1 : P) : Q → P := by
  intro hq
  exact h1

theorem T55 (h1 : P → Q) (h2 : ¬Q) : ¬P := by
  intro hp
  apply h2
  apply h1
  exact hp

theorem T56 (h1 : P → (Q → R)) : Q → (P → R) := by
  intro hq
  intro hp
  apply h1 hp
  exact hq

theorem T57 (h1 : P ∨ (Q ∧ R)) : P ∨ Q := by
  cases h1 with
  | inl hp =>
      left
      exact hp
  | inr hqr =>
      right
      exact hqr.left

theorem T58 (h1 : (L ∧ M) → ¬P) (h2 : I → P) (h3 : M) (h4 : I) : ¬L := by
  intro hl
  have hp : P := h2 h4
  have hnp : ¬P := h1 ⟨hl, h3⟩
  exact hnp hp

theorem T59 : P → P := by
  intro hp
  exact hp

theorem T510 : ¬ (P ∧ ¬P) := by
  intro h
  exact h.right h.left

end Exercises
