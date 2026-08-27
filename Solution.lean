/-
Copyright (c) 2026 Brandon Yates. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import QHarm.Main

/-!
# Solution

The proof development lives in the `QHarm` library, pinned by commit in `lakefile.toml`.
The Challenge introduces no definitions; this file restates its theorem verbatim and
discharges it by direct application of `QHarm.master_int`.
-/

namespace ErdosBorwein

theorem irrational_qharmonic_int (t : ℤ) (ht : 2 ≤ t) :
    Irrational (∑' n : ℕ+, 1 / ((t : ℝ) ^ (n : ℕ) - 1)) :=
  QHarm.master_int t ht

end ErdosBorwein
