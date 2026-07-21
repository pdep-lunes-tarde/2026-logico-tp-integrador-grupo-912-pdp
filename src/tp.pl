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

test(lawine_recuerda_destruir_al_demonio_aura_en_1400, [nondet]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1400).

test(lawine_no_recuerda_destruir_al_demonio_aura_en_1380, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1380).

test(lawine_no_recuerda_destruir_al_demonio_aura_en_1410, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1410).


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

% conoce(Persona, Hazania, AnioConocimiento, Forma).
% conoce(Persona, hazania(Nombre_Hazania, [Realizadores_de_Hazania], Lugar_de_Hazania), AnioConocimiento, Forma).
conoce(wirbel, hazania(rescatar_a_la_hermana_de_wirbel, [stark, fern], klares), 1390, presencio).
conoce(frieren, hazania(rescatar_a_la_hermana_de_wirbel, [stark, fern], klares), 1390, presencio).
conoce(lawine, hazania(destruir_al_demonio_aura, [frieren], weise), 1393, cancion).
conoce(voll, hazania(destruir_al_demonio_aura, [denken], auberst), 1400, libro(50)).
conoce(serie, hazania(destruir_al_rey_demonio, [frieren, himmel, heiter, eisen], ende), 1335, libro(100)).
conoce(kanne, hazania(recuperar_al_gato_perdido, [himmel, frieren], weise), 1375, presencio).

% hazania(Nombre_Hazania, [Realizadores_de_Hazania], Lugar_de_Hazania)


% Punto 2.a - Una hazaña es recordada por alguien en cierto año

es_recordada_por(Hazania, Persona, Anio):-
    conoce(Persona, Hazania, AnioConocimiento, FormaConocimiento),
    esta_vivo(Persona, Anio),
    AnioConocimiento =< Anio,
    recuerdo_vigente(FormaConocimiento, AnioConocimiento, Anio).

recuerdo_vigente(presencio, _, _).

recuerdo_vigente(cancion, AnioConocimiento, Anio):-
    Anio =< AnioConocimiento + 15.

recuerdo_vigente(libro(Paginas), AnioConocimiento, Anio):-
    Anio =< AnioConocimiento + Paginas.


% Punto 2.b - Una Hazania esta corroborada

esta_corroborada(Nombre_Hazania):-
    conoce(_, hazania(Nombre_Hazania, Realizadores, Lugar_de_Hazania), _, _),
    not(hay_otra_version(Nombre_Hazania, Realizadores, Lugar_de_Hazania)).

hay_otra_version(Nombre_Hazania, Realizadores, _):-
    conoce(_, hazania(Nombre_Hazania, Otros_Realizadores, _), _, _),
    Otros_Realizadores \= Realizadores.

hay_otra_version(Nombre_Hazania, _, Lugar_de_Hazania):-
    conoce(_, hazania(Nombre_Hazania, _, Otro_Lugar_de_Hazania), _, _),
    Otro_Lugar_de_Hazania \= Lugar_de_Hazania.


% Punto 2.c - Paso al olvido



% ------------------------------------------------------------
% PUNTO 3: CONMEMORANDO HAZAÑAS
% ------------------------------------------------------------

% Punto 3.a - Días festivos

% Punto 3.b - Estatuas

% Punto 3.c - Mantenimientos de estatuas

% Punto 3.d - Estado de conservación de las estatuas

% Punto 3.e - Conocimiento de hazañas por conmemoraciones

% Punto 3.f - Recuerdos generados por días festivos

% Punto 3.g - Recuerdos generados por estatuas.
