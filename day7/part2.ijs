file =: (<;._2) (1!:1) < 'input.txt'

dict =. 'J23456789TQKA' ,:'abcdefghijklmn'
replace =. 4 : 0
    translator =. +/(1+i. # ({. x)) * y e."1 0 ({. x)
    return =. translator} y ([ , #@[ #"1 ,.@]) ({: x)
)

formatted =. 5 (dict&replace@{. ; ".@}.)&>file
hand =. 'a' & (-@:(6 #. [: |. +/)@:(E. ([: \:~ #/.~)/. ]))

sorted =. /:~(hand&.> @: {. @: |: ,. ])formatted
+/(* 1 + i.@:#)> {: |: sorted
