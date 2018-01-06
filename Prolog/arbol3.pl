hombre(raul).
hombre(alejandro).
hombre(elvis).
hombre(daniel).
hombre(marcelo).
hombre(luis).

mujer(anita).
mujer(yuliana).
mujer(miriam).
mujer(faride).
mujer(almendra).

padre(elvis,alejandro).
padre(yuliana,alejandro).
padre(raul,luis).
padre(anita,luis).
padre(raul,yuliana).
padre(anita,yuliana).
padre(raul,miriam).
padre(anita,miriam).
padre(elvis,faride).
padre(yuliana,faride).
padre(miriam,marcelo).
padre(daniel,marcelo).
padre(daniel,almendra).
padre(miriam,almendra).

diferente(A,B):-not(A=B).
hijos(A,B):-padre(B,A).
hijo(A,B):-hijos(B,A),hombre(A).
hija(A,B):-hijos(B,A),mujer(A).
mama(A,B):-padre(A,B),mujer(A).
papa(A,B):-padre(A,B),hombre(A).
abuelos(A,B):-padre(A,C),padre(C,B).
abuelo(A,B):-abuelos(A,B),hombre(A).
abuela(A,B):-abuelos(A,B),mujer(A).
nietos(A,B):-padre(B,C),padre(C,A).
nieto(A,B):-nietos(A,B),hombre(A).
nieta(A,B):-nietos(A,B),mujer(A).
hermanos(A,B):-papa(C,A),papa(C,B),diferente(A,B).
hermano(A,B):-hermanos(A,B),hombre(A).
hermana(A,B):-hermanos(A,B),mujer(A).
primos(A,B):-padre(C,A),padre(D,B),hermanos(C,D),diferente(D,C).
primo(A,B):-primos(A,B),hombre(A).
prima(A,B):-primos(A,B),mujer(A).
tios(A,B):-padre(C,B),hermanos(C,A).
tio(A,B):-tios(A,B),hombre(A).
tia(A,B):-tios(A,B),mujer(A).
sobrinos(A,B):-sobrina(A,B);sobrino(A,B).
sobrino(A,B):-hijo(A,C),hermanos(C,B),hombre(A).
sobrina(A,B):-hija(A,C),hermanos(C,B),mujer(A).
cuñado(A,B):-esposo(C,B),hemana(C,A).
cuñada(A,B):-esposa(C,B),hermano(C,A).
esposa(A,B):-hijos(C,A),hijos(C,B),diferente(A,B),mujer(A).
esposo(A,B):-hijos(C,A),hijos(C,B),diferente(A,B),hombre(A).




















