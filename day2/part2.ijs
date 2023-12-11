file =: (<;._2) (1!:1) < 'input.txt'

digits =. ,/ ":("0) i.10
stripLetters =. (#~ e.&digits)

getNumberSafe =. 3 : '(0 ~: #stripLetters y) { 0 , ".stripLetters y'  

colorEnum =. ('red';'green';'blue')
classifyColor =. 3 : 'colorEnum ([: +./ |:)@:(E.&>) <y'

minColors =. 3 : 0
    game =. {:([: <;._1 ':'&,) y
    rolls =. ([: <;._1 ';'&,)&> game
    splitRolls =. ([: <;._1 ','&,)&> rolls
    return =. >./>./ (classifyColor * getNumberSafe)&> splitRolls
)

+/ */ & minColors&> file