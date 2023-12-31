scheme =. (];._2) (1!:1) < 'input.txt'
digits =. '0123456789'

unmask =. 3 : 'y } (($scheme) $ '' '') ,: scheme'

infect =. 3 : 0
    seed =. y
    border =. ([ ,.~ [ ,. [ ,~ [ , ])
    convolute =. ((1 1,: 3 3) (+./@:,;._3) 0&border)
    infectStep =. (+. numMask *. convolute)
    infectedMask =. numMask *. infectStep^:_ seed
)

numMask =. (scheme e. digits)
symbolMask =. -. (scheme e. digits,'.')

+/ , ". unmask infect symbolMask