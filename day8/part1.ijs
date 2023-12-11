file =: (<;._2) (1!:1) < 'input.txt'

directions =. 'R' e.~ > 0 { file

sources =. (0,:3)(];.0)("_ 1)> 2 }. file
ldests  =. (7,:3)(];.0)("_ 1)> 2 }. file
rdests  =.(12,:3)(];.0)("_ 1)> 2 }. file

findIndex =. {. @: I. @: (+./@:E."1)&sources

pathBranches =. ldests ,&:findIndex"1 rdests

end =. findIndex 'ZZZ'
start =. findIndex 'AAA'

$ start

]F..({ {&pathBranches)&directions^:5 start
end e. (, [: ]F:.({ {&pathBranches)&directions {:)^:(-. end e. ]) , start