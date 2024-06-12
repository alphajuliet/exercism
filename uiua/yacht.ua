Dice ← (⌈×6⚂)
FiveDice ← [⍥Dice 5]
SortDown ← ⊏⍖.
Count ← ∵°□ ⍚⧻ ⊕□⊛.
R ← +1⇡6
Tally ← ≡/+ ⊞= R

Single ← × ⊙⊡ :⊸-1 ⊙Tally
Ones ← Single 1
Twos ← Single 2
Threes ← Single 3
Fours ← Single 4
Fives ← Single 5
Sixes ← Single 6
FullHouse ← ⟨0|/+⟩ ≍[3 2] Count.
FourOfAKind ← ⟨0|/+⟩ ≥4 ⊸⧻▽=0⊛.
LittleStraight ← ⟨0|30⟩≍[5 4 3 2 1] SortDown
BigStraight ← ⟨0|30⟩≍[6 5 4 3 2] SortDown
Choice ← /+
Yacht ← ⟨0|50⟩=1⧻Count

⍤.=3 Ones [1 1 1 4 5]
⍤.=4 Twos [2 2 3 4 5]
⍤.=15 Threes [3 3 3 3 3]
⍤.=0 Fours [1 2 3 3 5]
⍤.=15 Fives [5 1 5 2 5]
⍤.=6 Sixes [2 3 4 5 6]
⍤.=19 FullHouse [3 3 3 5 5]
⍤.=16 FourOfAKind [4 4 4 4 6]
⍤.=30 LittleStraight [1 2 3 4 5]
⍤.=30 BigStraight [2 3 4 5 6]
⍤.=18 Choice [2 3 3 4 6]
⍤.=50 Yacht [4 4 4 4 4]

