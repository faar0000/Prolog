contacto(alexis).
mes(alexis,junio).
dia(alexis,18).

contacto(frankil).
mes(frankil,abril).
dia(frankil,22).

contacto(jhon).
mes(jhon,febrero).
dia(jhon,12).

contacto(yaritza).
mes(yaritza,abril).
dia(yaritza,1).




dato(A,B,C):-contacto(A),dia(A,B),mes(A,C).
