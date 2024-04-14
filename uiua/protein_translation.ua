# Protein translation
Triplets ← ⍉⊕∘◿3⇡⧻.

Codon ← ⍣(
  "Methionine" °"AUG"
| "Phenylalanine" ◌⊢regex "UU[UC]"
| "Leucine" ◌⊢regex "UU[AG]"
| "Serine" ◌⊢regex "^UC"
| "Tyrosine" ◌⊢regex "UA[UC]"
| "Cysteine" ◌⊢regex "UG[UC]"
| "Tryptophan" °"UGG"
| "STOP"
)

Translate ← ▽=0∵°□\↥ ⍚(≍"STOP"). ⍚Codon ≡□ Triplets

⍤.≍ {"Cysteine"} Translate "UGU"
⍤.≍ {"Methionine" "Phenylalanine" "Serine"} Translate "AUGUUUUCUUAAAUG"
