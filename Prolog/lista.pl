tamaño([],0).
tamaño([X|Y],N):-tamaño(Y, N1), N is N1+1.
