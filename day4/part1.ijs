file =: (<;._2) (1!:1) < 'input.txt'

getPoints =. 3 : 0
    card =. {:([: <;._1 ':'&,) y
    'winning have' =. ([: <;._1 '|'&,)&> card
    return =. # I. (". have)e.(". winning)
)

+/ ([: <. 2 ^ 1 -~ ])&getPoints&> file


