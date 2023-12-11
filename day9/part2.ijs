file =: (<;._2) (1!:1) < 'input.txt'

replace =. 4 : 0
    translator =. +/(1+i. # ({. x)) * y e."1 0 ({. x)
    return =. translator} y ([ , #@[ #"1 ,.@]) ({: x)
)

formatted =. ".&.> ('-',:'_')&replace &.> file

derivitives =. (1,:2)&(-~/;._3)&.>(^:([: i. [: # >))@:<
prevValue =. -/ @: |. @: ({.&>) @: derivitives

+/prevValue&>formatted

