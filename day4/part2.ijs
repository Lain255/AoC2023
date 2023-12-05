file =: (<;._2) (1!:1) < 'input.txt'

getPoints =. 3 : 0
    card =. {:([: <;._1 ':'&,) y
    'winning have' =. ([: <;._1 '|'&,)&> card
    return =. # I. (". have)e.(". winning)
)

points =. getPoints&> file
cardCount =. ($ file) # 1

newCards =. 3 : '((-#y){ points) # {.y'
remainingCards =. 3 : '(#}.y) $ (}.y) +/@:>@:; newCards y'

3 : '0: ` ({. + $:@remainingCards)@.([: * #) y' cardCount
