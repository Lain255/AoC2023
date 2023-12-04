file =: (<;._2) (1!:1) < 'input.txt'

digits =. ,/ ":("0) i.10
stripLetters =. (#~ e.&digits)

getNumberSafe =. 3 : '(0 ~: #stripLetters y) { 0 , ".stripLetters y'  

colorEnum =. ('red';'green';'blue')
classifyColor =. 3 : 'colorEnum ([: +./ |:)@:(E.&>) <y'

gamePossible =. 4 : 0
    'game rest' =. ([: <;._1 ':'&,) y
    gameNum =. ".stripLetters game
    
    rolls =. ([: <;._1 ';'&,) rest
    splitRolls =. ([: <;._1 ','&,)&> rolls
    maxColors =. >./>./ (classifyColor * getNumberSafe)&> splitRolls
    
    result =. gameNum * *./ x >: maxColors
)

+/ 12 13 14&gamePossible&> file
