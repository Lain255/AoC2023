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
cogMask =. (scheme e. '*')
cogIndices =. ;(] ,"0 0&.>~ [: i. #) <@I. cogMask
indexMask =. 3 : 0
    ($scheme) $ (#&0 , 1 , [: #&0 (*/$scheme)&-) ($scheme) #. y
)
cogMasks =. indexMask("1)cogIndices

gearRatio =. 3 : '(*/ * _1 + #)(#~ [: -. e.&0) , ". unmask infect y'

+/ gearRatio"2 cogMasks
