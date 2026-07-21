% ============================================================
% TESTS
% ============================================================


:- begin_tests(tpIntegrador, []).


% ------------------------------------------------------------
% TESTS DEL PUNTO 1
% ------------------------------------------------------------

test(kanne_esta_viva_en_1370):-
    esta_vivo(kanne, 1370).

test(kanne_no_esta_viva_en_1300, [fail]):-
    esta_vivo(kanne, 1300).

test(kanne_no_esta_viva_en_2000, [fail]):-
    esta_vivo(kanne, 2000).

test(voll_esta_vivo_en_1550):-
    esta_vivo(voll, 1550).

test(voll_no_esta_vivo_en_1551, [fail]):-
    esta_vivo(voll, 1551).

test(serie_esta_viva_en_5000, [nondet]):-
    esta_vivo(serie, 5000).


% ------------------------------------------------------------
% TESTS DEL PUNTO 2
% ------------------------------------------------------------


% ------------------------------------------------------------
% TESTS DEL PUNTO 3
% ------------------------------------------------------------


:- end_tests(tpIntegrador).


% ============================================================
% PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1
% ============================================================


% ------------------------------------------------------------
% PUNTO 1: LA GENTE
% ------------------------------------------------------------

% Punto 1.a - Habitantes

% habitante(nobre, raza, anio_naciomiento, pueblo ).
habitante(denken, humano, 1290, auberst).
habitante(voll, enano, 1200, ende).
habitante(serie, elfo, 500, weise).     
habitante(fern, humano, 1370, weise).
habitante(stark, humano, 1368, riegel). 
habitante(lawine, humano, 1372, auberst).
habitante(kanne, humano, 1365, weise).
habitante(wirbel, humano, 1350, klares).
habitante(lernen, humano, 1315, auberst).
habitante(frieren, elfo, 100, weise).
habitante(eisen, enano, 1150, riegel).




% Punto 1.b - Personas vivas según el año
expectativa_vida(humano, 80).
expectativa_vida(enano, 350).
%expectativa_vida(elfo, _).

esta_vivo(Persona, AnioConsulta):-
    habitante(Persona, Raza, AnioNacimiento, _),
    AnioNacimiento =< AnioConsulta,
    sigue_vivo(Raza, AnioNacimiento, AnioConsulta).

sigue_vivo(elfo, _, _).

sigue_vivo(Raza, AnioNacimiento, AnioConsulta):-
    expectativa_vida(Raza, Expectativa),
    AnioConsulta =< AnioNacimiento + Expectativa.


% ------------------------------------------------------------
% PUNTO 2: LOS RECUERDOS
% ------------------------------------------------------------

% Punto 2.a - Hazañas conocidas por las personas

% Punto 2.b - Duración de los recuerdos

% Punto 2.c - Hazañas recordadas en un año

% Punto 2.d - Hazañas corroboradas

% Punto 2.e - Hazañas que pasaron al olvido


% ------------------------------------------------------------
% PUNTO 3: CONMEMORANDO HAZAÑAS
% ------------------------------------------------------------

% Punto 3.a - Días festivos

% Punto 3.b - Estatuas

% Punto 3.c - Mantenimientos de estatuas

% Punto 3.d - Estado de conservación de las estatuas

% Punto 3.e - Conocimiento de hazañas por conmemoraciones

% Punto 3.f - Recuerdos generados por días festivos

% Punto 3.g - Recuerdos generados por estatuas
