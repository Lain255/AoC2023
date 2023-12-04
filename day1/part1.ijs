file =. (<;._2) (1!:1) < 'input.txt'

stripLetters =. (#~ e.&'0123456789')
getCode =. ([: ". {. , {:) @: stripLetters

+/ getCode&> file
