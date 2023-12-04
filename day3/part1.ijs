file =. (];._2) (1!:1) < 'input.txt'
scheme =. file
digits =. '0123456789'

numMask =. (scheme e. digits)
symbolMask =. -. (scheme e. digits,'.')

unmask =. 3 : 'y } (($scheme) $ '' '') ,: scheme'
nums =. unmask numMask

border =. 4 : 'x , (x (,"1) y (,"1) x) , x'
convolute =. 3 : '(1 1,: 3 3) (+./@:,;._3) 0 border y'
infect =. 3 : 'y +. numMask *. convolute y'
infectedMask =. numMask *. infect^:_ symbolMask

+/ , ". unmask infectedMask
