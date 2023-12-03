file =. > ;: 1!:1 < 'input.txt'
digits =. '0123456789'
stripLetters =. (#~ e.&digits)
getCode =. ([: ". {. , {:) @: stripLetters
+/ getCode"1 file
