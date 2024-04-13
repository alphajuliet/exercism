Letters ← {"AEIOULNRST" "DG" "BCMP" "FHVWY" "K" "JX" "QZ"}
Values ← [1 2 3 4 5 8 10]

FindIn ← ⍚(/+⌕):
Count ← /◇⊂ /+ ∵(FindIn Letters)
Score ← /+×Values Count

⍤ .=14 Score "CABBAGE"
