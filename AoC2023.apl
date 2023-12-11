digits←'0123456789'
digitNames←'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'

input1 ← ⊃⎕NGET'day1/input.txt' 1
input2 ← ⊃⎕NGET'day2/input.txt' 1
input5 ← ⊃⎕NGET'day5/input.txt' 1

decode ← {⍎(⊃,⊃∘⌽)⍵∩digits}
day1part1 ← +/decode¨input1
day1part2 ← +/{t←⍵ ⋄ u←⍵{t[⍸(⊃⍵⌷digitNames)⍷⍺]←⍵⌷digits}⍤1⍪⍳10 ⋄ decode t}¨input1

day2part1 ← input2



seeds ← ⍎7↓⊃input5
maps  ← ⍎⍤1¨(↑ 1∘↓ ∩ 1∘↓∘⌽ )¨(∨/'map'∘⍷⍤1↑input5)⊂input5
(1⌽⌽)0⌷⊃maps

(⊂0 1) ⌷⍉(⊂∘⍋⌷⊢)∘((1⌽⌽)⍤1) ⊃maps