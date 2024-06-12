# Minehunter

ToMatrix ← ⌵±⊜∘≠¯36. -@.

# Input text
Z ← $ .*.*.
    $ ..*..
    $ ..*..
    $ .....

Y ← ToMatrix Z
Y

# Neighbourhood
N ← ☇1 ⊞⊂ .-1⇡3 # All the offsets as a 9x2 array

# Translate 2D arr1 by an offset and add to arr2
# This is a reducing function over a list of offsets
# TranslateAdd : arr1 offset arr2 -> arr
TranslateAdd ← +⬚0↻:

Y
TranslateAdd Y ¯1_¯1
TranslateAdd Y ¯1_0
TranslateAdd Y ¯1_1
TranslateAdd Y 0_¯1
TranslateAdd Y 0_0
TranslateAdd Y 0_1
TranslateAdd Y 1_¯1
TranslateAdd Y 1_0
TranslateAdd Y 1_1

×¬Y

# The End
