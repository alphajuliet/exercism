# Luhn algorithm
Split ← -@0⊏⊚≠@ .             # Split into digits, ignoring spaces
Alternate ← ∩▽⊙,⊃(=0|≠0)◿2⇡⧻. # Extract alternate digits

Luhn ← (
  Split
  ×2 Alternate
  ⟨∘|-9⟩>9.
  ♭⍉⊟
  =0◿10/+
)

NGood ← "4539 3195 0343 6467"
NBad ← "8273 1232 7352 0569"

⍤.=1 Luhn NGood
⍤.=0 Luhn NBad
