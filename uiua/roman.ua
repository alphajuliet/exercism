# Convert a number to Roman numerals
Roman ← (
  :""
  ⍢(-1000 ⊙$"_M")(≥1000.)
  ⍢(-900 ⊙$"_CM")(≥900.)
  ⍢(-500 ⊙$"_D")(≥500.)
  ⍢(-400 ⊙$"_CD")(≥400.)
  ⍢(-100 ⊙$"_C")(≥100.)
  ⍢(-90 ⊙$"_XC")(≥90.)
  ⍢(-50 ⊙$"_L")(≥50.)
  ⍢(-40 ⊙$"_XL")(≥40.)
  ⍢(-10 ⊙$"_X")(≥10.)
  ⍢(-9 ⊙$"_IX")(≥9.)
  ⍢(-5 ⊙$"_V")(≥5.)
  ⍢(-4 ⊙$"_IV")(≥4.)
  ⍢(-1 ⊙$"_I")(≥1.)
  ◌
)

⍤.=1 ≍"MCMLIII" Roman 1953
⍤.=1 ≍"MMI" Roman 2001
