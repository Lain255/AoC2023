file =. 1!:1 < 'input.txt'
digits =. '0123456789'

columns =. 1+file i. 10 { a.
rows =. (%&columns) # file
scheme =. (}:"1)(rows, columns) $ file

numMask =. (scheme e. digits)
symbolMask =. -. scheme e. digits,'.'

unmask =. 3 : 'y } (($scheme) $ '' '') ,: scheme'
nums =. unmask numMask

sum =. 3 : '+/ , ". y'

border =. 4 : 'x , (x (,"1) y (,"1) x) , x'
convolute =. 3 : '(1 1,: 3 3) (+./@:,;._3) 0 border y'
infect =. 3 : 'y +. numMask *. convolute y'
infectedMask =. numMask *. infect^:_ symbolMask

sum unmask infectedMask
