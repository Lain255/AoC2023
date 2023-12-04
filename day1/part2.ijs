file =. (<;._2) (1!:1) < 'input.txt'
digits =. '0123456789'

numNames =. 'zero';'one';'two';'three';'four';'five';'six';'seven';'eight';'nine'
translate =. 3 : 0 
    numNameLoc =. >./(1+i.10) * > (E. & y) &.> numNames
    numNameLoc} y , (#y) (#" 0 0) digits
)

stripLetters =. (#~ e.&digits)
getCode =. ([: ". {. , {:) @: stripLetters @: translate

+/ getCode&> file
