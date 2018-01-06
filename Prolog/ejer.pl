
rector(rohel).
viceacademico(juan).
viceadministrativo(pedro).
viceinvestigacion(alejandra).
decano1(luis).
decano2(julian).
cienciaactiva(ana).
cienciabasica(anita).


manda(rector,viceacademico).
manda(rector,viceadministrativo).
manda(rector,viceinvestigacion).
manda(rector,decano1).
manda(rector,decano2).
manda(rector,cienciaactiva).
manda(rector,cienciabasica).

manda(viceacademico,decano1).
manda(viceacademico,decano2).

manda(viceadministrativo,cienciaactiva).
manda(viceadministrativo,cienciabasica).

ordena(X,Y):-rector(X),viceacademico(Y).
ordena(X,Y):-rector(X),viceadministrativo(Y).
ordena(X,Y):-rector(X),viceinvestigacion(Y).
ordena(X,Y):-rector(X),decano1(Y).
ordena(X,Y):-rector(X),decano2(Y).
ordena(X,Y):-rector(X),cienciaactiva(Y).
ordena(X,Y):-rector(X),cienciabasica(Y).

ordena(X,Y):-viceacademico(X),decano1(Y).
ordena(X,Y):-viceacademico(X),decano2(Y).

ordena(X,Y):-viceadministrativo(X),cienciaactiva(Y).
ordena(X,Y):-viceadministrativo(X),cienciabasica(Y).







