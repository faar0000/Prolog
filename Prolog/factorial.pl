factorial(0,1).
factorial(N,_):- N<0,!,fail.
factorial(N,F):-mayor(N,0), diferencia(N,1,N1),
               factorial(N1,F1), producto(N,F1,F).
mayor(X,Y):- X>Y.
diferencia(X,Y,Z):- Z is X-Y.
producto(X,Y,Z):- Z is X*Y.
