tama�o([],0).
tama�o([X|Y],N):-tama�o(Y, N1), N is N1+1.
