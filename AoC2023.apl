digits←'0123456789'
digitNames←'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'

input1 ← ⊃⎕NGET'day1/input.txt' 1
input2 ← ⊃⎕NGET'day2/input.txt' 1

day1part1 ← +/{⍎(⊃,⊃∘⌽)⍵∩digits}¨input1
day1part2 ← +/{t←⍵ ⋄ u←⍵{t[⍸(⊃⍵⌷digitNames)⍷⍺]←⍵⌷digits}⍤1⍪⍳10 ⋄ ⍎(⊃,⊃∘⌽)t∩digits}¨input1

day2part1 ← input2
