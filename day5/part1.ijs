file =: ((<;._2) (1!:1) < 'input.txt') , < 10 { a.

seeds =. ". 7 }. > {. file

partition =. (+/\('map'([: +./ E.)"1>file))
maps =. }. partition ([: < [: ".&> [: }: }.)/.file

makeLookup =. 3 : 0
    startRanges =. 1&{ |: y
    endRanges =. (2&{ + 1&{) |: y
    offsets =. (0&{ - 1&{) |: y
    outliers =. 0 ,.~ ,. endRanges {~ I. -. endRanges e. startRanges
    unsortedLookup =. outliers , startRanges ,. offsets
    lookup =. (-1 0) +("1 1) (/: { ]) unsortedLookup
    return =. (}. 0 { |: lookup) ; (1 { |: lookup)
)

lookups =. makeLookup&> maps
convert =. 4 : 'y + ((> {. x) I. y) { ( > {: x)'

NB. between 113985517 1588599567
lookups
<./ seeds ]F..convert lookups
