# Split on space or hyphen
SplitA ← ⊜□ ¬+ ⊃(=@ |=,@-)
Acronym ← /◇⊂ ⍚(⌵⊢) SplitA

⍤.≍ "ABC" Acronym "ant bat cat"
⍤.≍ "NCB" Acronym "not-cat bat"
⍤.≍ "IML" Acronym "it's my life"
# Doesn't work yet...
# ⍤.≍ "HTML" Acronym "HyperText Markup Language"
