file =. (<;._2) (1!:1) < 'input.txt'
digits =. '0123456789'

stripLetters =. (#~ e.&digits)
getCode =. ([: ". {. , {:) @: stripLetters

+/ getCode&> file