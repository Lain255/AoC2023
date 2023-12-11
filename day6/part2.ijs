file =: (<;._2) (1!:1) < 'input.txt'
digits =. '0123456789'

formatted =. < |. ".&(#~ e.&digits) &> file

*/(+/@:< ((] * -) i.))/&> formatted
