file =: (<;._2) (1!:1) < 'input.txt'

dict =. '23456789TJQKA' ,:'abcdefghijklm'
replace =. 4 : 0
    translator =. +/(1+i. # ({. x)) * y e."1 0 ({. x)
    return =. translator} y ([ , #@[ #"1 ,.@]) ({: x)
)

formatted =. 5 (dict&replace@{. ; ".@}.)&>file
hand =. -@:(6 #. [: /:~ #/.~)

sorted =. /:~(hand&.> @: {. @: |: ,. ])formatted
+/(* 1 + i.@:#)> {: |: sorted
