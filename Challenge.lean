/-
Copyright (c) 2026 Brandon Yates. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib

/-!
# Challenge: irrationality of the `q`-harmonic series at every integer base

This file is the human-auditable statement. It imports only Mathlib and introduces no
definitions.

For an integer `t ≥ 2`, the series `∑_{n ≥ 1} 1 / (tⁿ − 1)` is the Lambert series of the
divisor function at `1/t`: `∑_{n ≥ 1} 1/(tⁿ − 1) = ∑_{m ≥ 1} τ(m) t^{−m}`. At `t = 2` its
value is the Erdős–Borwein constant `1.60669515…`.

The compared statement is that this number is irrational for every integer `t ≥ 2`.
This is a theorem of Erdős (1948) for `t = 2` and of P. Borwein (1991) for every integer
base; the proof formalized in the Solution is of Padé / orthogonal-polynomial type,
following the little `q`-Legendre construction of Van Assche (2001).

## Scope, stated plainly

Only integer bases are compared. Irrationality for rational non-integer bases
`t = P/Q > 1` (Chowla's question; Erdős problem #1049) is **not** addressed by this
statement and nothing here claims anything about it. No irrationality measure, no
linear-independence statement, and no transcendence statement is asserted.
-/

namespace ErdosBorwein

/-- **Irrationality of the `q`-harmonic series at every integer base.**

For every integer `t ≥ 2`, `∑_{n ≥ 1} 1 / (tⁿ − 1)` is irrational. The sum runs over
`n : ℕ+` and is taken in `ℝ` as a `tsum`; the series converges absolutely for `t ≥ 2`, so
the `tsum` is its ordinary value. -/
theorem irrational_qharmonic_int (t : ℤ) (ht : 2 ≤ t) :
    Irrational (∑' n : ℕ+, 1 / ((t : ℝ) ^ (n : ℕ) - 1)) := by
  sorry

end ErdosBorwein
