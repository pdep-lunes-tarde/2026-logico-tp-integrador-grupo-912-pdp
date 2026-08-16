% ============================================================
% TESTS
% ============================================================

:- begin_tests(tpIntegrador, []).


% ------------------------------------------------------------
% TESTS DEL PUNTO 1  Faltan agregar tests fueras de la consigna
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

test(voll_no_esta_vivo_en_1199, [fail]):-
    esta_vivo(voll, 1199).

test(serie_no_esta_viva_en_499, [fail]):-
    esta_vivo(serie, 499).


% ------------------------------------------------------------
% TESTS DEL PUNTO 2  Faltan agregar tests fueras de la consigna
% ------------------------------------------------------------

test(lawine_no_recuerda_destruir_al_demonio_aura_en_1380, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1380).

test(lawine_recuerda_destruir_al_demonio_aura_en_1400, [nondet]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1400).

test(lawine_no_recuerda_destruir_al_demonio_aura_en_1410, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1410).

test(voll_recuerda_destruir_al_demonio_aura_en_1450):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), voll, 1450).

test(voll_no_recuerda_destruir_al_demonio_aura_en_1460, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), voll, 1460).

test(wirbel_recuerda_rescatar_a_la_hermana_de_wirbel_en_1430, [nondet]):-
    es_recordada_por(hazania(rescatar_a_la_hermana_de_wirbel, _, _), wirbel, 1430).

test(wirbel_no_recuerda_rescatar_a_la_hermana_de_wirbel_en_1440, [fail]):-
    es_recordada_por(hazania(rescatar_a_la_hermana_de_wirbel, _, _), wirbel, 1440).

test(rescatar_a_la_hermana_de_wirbel_es_una_hazania_corroborada, [nondet]):-
    esta_corroborada(rescatar_a_la_hermana_de_wirbel).

test(destruir_al_demonio_aura_no_es_una_hazania_corroborada, [fail]):-
    esta_corroborada(destruir_al_demonio_aura).

test(destruir_al_demonio_aura_paso_al_olvido_en_1460, [nondet]):-
    paso_al_olvido(destruir_al_demonio_aura, 1460).

test(destruir_al_demonio_aura_no_paso_al_olvido_en_1440, [fail]):-
    paso_al_olvido(destruir_al_demonio_aura, 1440).

test(wirbel_recuerda_rescatar_a_la_hermana_de_wirbel_en_1429):-
    es_recordada_por(hazania(rescatar_a_la_hermana_de_wirbel, _, _), wirbel, 1429).

test(voll_no_recuerda_destruir_al_demonio_aura_en_1399, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, [denken], auberst), voll, 1399).

% ------------------------------------------------------------
% TESTS DEL PUNTO 3  Faltan agregar tests fueras de la consigna
% ------------------------------------------------------------

test(lawine_recuerda_destruir_al_rey_demonio_en_1400, [nondet]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), lawine, 1400).

test(lawine_no_recuerda_destruir_al_rey_demonio_en_1390, [fail]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), lawine, 1390).

test(fern_recuerda_destruir_al_rey_demonio_en_1400, [nondet]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), fern, 1400).

test(lawine_no_conoce_destruir_al_rey_demonio_en_1317, [fail]):-
    conoce(lawine, hazania(destruir_al_rey_demonio, _, _), 1317, _).

test(lernen_no_conoce_destruir_a_schlat_el_omnisciente_en_1339, [fail]):-
    conoce(lernen, hazania(destruir_a_schlat_el_omnisciente, _, _), 1339, _).

test(voll_no_conoce_destruir_a_schlat_el_omnisciente, [fail]):-
    conoce(voll, hazania(destruir_a_schlat_el_omnisciente, _, _), _, _).

test(estatua_de_marmol_nueva):-
    esta_en_buen_estado(estatua(el_heroe_del_sur, marmol, 1340), 1350).

test(estatua_de_bronce_nueva):-
    esta_en_buen_estado(estatua(el_equipo_de_heroes, bronce, 1370), 1380).



% ------------------------------------------------------------
% TESTS DEL PUNTO 5
% ------------------------------------------------------------

test(fern_es_heroe, [nondet]):-
    es_heroe(fern).

test(frieren_inspiro_a_fern, [nondet]):-
    quienes_inspiraron_a(fern, frieren).

:- end_tests(tpIntegrador).


% ============================================================
% PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1 - PARTE 1
% ============================================================


% ------------------------------------------------------------
% PUNTO 1: LA GENTE
% ------------------------------------------------------------

% Punto 1.a - Habitantes

% habitante(nombre, raza, anio_nacimiento, pueblo).
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

conoce(Persona, Hazania, AnioConocimiento, conmemoracion(TipoConmemoracion)):-
    habitante(Persona, _, AnioNacimiento, Pueblo),
    conmemora(Pueblo, Hazania, TipoConmemoracion),
    anio_inicio_conmemoracion(TipoConmemoracion, AnioInicio),
    anio_en_que_conocio(AnioNacimiento, AnioInicio, AnioConocimiento),
    esta_vivo(Persona, AnioConocimiento).

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

recuerdo_vigente(conmemoracion(diaFestivo(_)), _, _).

recuerdo_vigente(conmemoracion(estatua(NombreEstatua, Material, AnioConstruccion)), _, AnioConsulta):-
    esta_en_buen_estado(estatua(NombreEstatua, Material, AnioConstruccion), AnioConsulta).

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

paso_al_olvido(Hazania, AnioConsulta) :-
    conoce(_, hazania(Hazania, _, _), _, _),
    not(es_recordada_por(hazania(Hazania, _, _), _, AnioConsulta)).

% ------------------------------------------------------------
% PUNTO 3: CONMEMORANDO HAZAÑAS
% ------------------------------------------------------------

% Punto 3.a - Las conmemoraciones

% conmemora(Pueblo, hazania(Nombre, [Realizadores], Lugar), TipoConmemoracion).

% conmemora(Pueblo, Hazania, diaFestivo(AnioInicio)).
conmemora(weise, hazania(destruir_al_rey_demonio, [frieren, himmel, heiter, eisen], ende), diaFestivo(1340)).

% conmemora(Pueblo, Hazania, estatua(NombreEstatua, Material, AnioConstruccion)).
conmemora(auberst, hazania(destruir_al_rey_demonio, [frieren, himmel, heiter, eisen], ende), estatua(el_equipo_de_heroes, bronce, 1370)).
conmemora(auberst, hazania(destruir_a_schlat_el_omnisciente, [heroe_del_sur], ende), estatua(el_heroe_del_sur, marmol, 1340)).

% mantenimiento(NombreEstatua, AnioMantenimiento).
mantenimiento(el_equipo_de_heroes, 1400).
mantenimiento(el_equipo_de_heroes, 1450).
mantenimiento(el_heroe_del_sur, 1410).


% Punto 3.b - Conocimiento de hazañas por conmemoraciones

anio_inicio_conmemoracion(diaFestivo(AnioInicio), AnioInicio).
anio_inicio_conmemoracion(estatua(_, _, AnioConstruccion), AnioConstruccion).

anio_en_que_conocio(AnioNacimiento, AnioInicio, AnioInicio):-
    AnioNacimiento =< AnioInicio.

anio_en_que_conocio(AnioNacimiento, AnioInicio, AnioNacimiento):-
    AnioNacimiento > AnioInicio.


% Estado de conservación de las estatuas

duracion_buen_estado(marmol, 30).
duracion_buen_estado(bronce, 15).

esta_en_buen_estado(estatua(NombreEstatua, Material, AnioConstruccion), AnioConsulta):-
    conmemora(_, _, estatua(NombreEstatua, Material, AnioConstruccion)),
    duracion_buen_estado(Material, Duracion),
    puesta_en_condiciones(estatua(NombreEstatua, Material, AnioConstruccion), AnioPuestaEnCondiciones),
    AnioPuestaEnCondiciones =< AnioConsulta,
    AnioConsulta =< AnioPuestaEnCondiciones + Duracion.

puesta_en_condiciones(estatua(_, _, AnioConstruccion), AnioConstruccion).

puesta_en_condiciones(estatua(NombreEstatua, _, _), AnioMantenimiento):-
    mantenimiento(NombreEstatua, AnioMantenimiento).

% ------------------------------------------------------------
% PUNTO 4: LOS PUEBLOS
% ------------------------------------------------------------


% I

pueblo_recuerda(Pueblo, Hazania, Anio):-
    habitante(Persona, _, _, Pueblo),
    es_recordada_por(Hazania, Persona, Anio).

% II

paginas_leidas_en_un_pueblo(Pueblo, Anio, PaginasTotales):-
    findall(Paginas, 
        (
        habitante(Persona, _, _, Pueblo),
        conoce(Persona, _, Anio, libro(Paginas))
        ),
        LPaginas),
    sum_list(LPaginas, PaginasTotales).

% III
    
pueblo_mas_lector(Pueblo, OtroPueblo, Anio):-
    habitante(_, _, _, Pueblo),
    paginas_leidas_en_un_pueblo(Pueblo, Anio, PaginasTotales),
    forall(
        habitante(_, _, _, OtroPueblo),
        (
        paginas_leidas_en_un_pueblo(OtroPueblo, Anio, PaginasOtroPueblo),
        PaginasTotales >= PaginasOtroPueblo
        )
    ).

% IV

es_musical(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    mayoria_de_hazanias_se_recuerdan_a_traves_de_canciones(Pueblo, Anio).

mayoria_de_hazanias_se_recuerdan_a_traves_de_canciones(Pueblo, Anio):-
    findall(Hazania, pueblo_recuerda(Pueblo, Hazania, Anio), Hazanias),
    findall(Hazania,
        (
        pueblo_recuerda(Pueblo, Hazania, Anio),
        habitante(Persona, _, _, Pueblo),
        conoce(Persona, Hazania, _, cancion)
        ),
        HazaniasRecordadasPorCancion),
    length(Hazanias, LHazanias),
    length(HazaniasRecordadasPorCancion, LHazaniasRecordadasPorCancion),
    LHazaniasRecordadasPorCancion > (LHazanias / 2).

% V

es_chismoso(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    ninguna_hazania_esta_corroborada(Pueblo, Anio).

ninguna_hazania_esta_corroborada(Pueblo, Anio):-
    findall(HazaniaCorroborada,
        (
        pueblo_recuerda(Pueblo, HazaniaCorroborada, Anio),
        esta_corroborada(HazaniaCorroborada)
        ),
        HazaniasCorroboradas),
    length(HazaniasCorroboradas, LHazaniasCorroboradas),
    LHazaniasCorroboradas = 0.

% VI

hazania_es_importante(Pueblo, Hazania, Anio):-
    habitante(_, _, _, Pueblo),
    todos_los_habitantes_recuerdan(Hazania, Pueblo, Anio).

todos_los_habitantes_recuerdan(Hazania, Pueblo, Anio):-
    findall(Persona,
        (
        habitante(Persona, _, _, Pueblo),
        esta_vivo(Persona, Anio)
        ),
        Habitantes),
    findall(Persona,
        (
        habitante(Persona, _, _, Pueblo),
        es_recordada_por(Hazania, Persona, Anio)
        ),
        HabitantesRecuerdan
    ),
    length(Habitantes, LHabitantes),
    length(HabitantesRecuerdan, LHabitantesRecuerdan),
    LHabitantes = LHabitantesRecuerdan.

% VII

esta_viviendo_tiempos_sin_precedentes(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    findall(HazaniaImportante, hazania_es_importante(Pueblo, HazaniaImportante, Anio), HazaniasImportantes),
    forall(member(Hazania, HazaniasImportantes), 
        (
        habitante(Persona, _, _, Pueblo),
        conoce(Persona, Hazania, _, presencio),
        es_recordada_por(Hazania, Persona, Anio)
         )
        ).
    
% ------------------------------------------------------------
% PUNTO 5: INSPIRACIÓN
% ------------------------------------------------------------

es_heroe(Persona) :-
    conoce(_, hazania(_, Heroes, _), _, _),
    participa_hazania(Persona, Heroes).

participa_hazania(Persona, Heroes) :-
    member(Persona, Heroes).

quienes_inspiraron_a(Persona, Inspirador) :-
    conoce(Persona, hazania(_, Heroes, _), _, _),
    member(Inspirador, Heroes),
    Inspirador \= Persona.

heroes_inspirados_por(HeroeInspirador, HeroeInspirado) :-
    es_heroe(HeroeInspirador),
    es_heroe(HeroeInspirado),
    HeroeInspirador \= HeroeInspirado,
    conoce(HeroeInspirado, hazania(_, Heroes, _), _, _),
    distinct(
        conoce(HeroeInspirado, hazania(_, Heroes, _), _, _),
        member(HeroeInspirador, Heroes)
    ).

cadena_de_inspiracion_entre_heroes(Heroe, Cadena) :-
    distinct(cadena_simple(Heroe, Cadena)).

cadena_simple(Heroe, [Heroe, HeroeInspirado]) :-
    heroes_inspirados_por(Heroe, HeroeInspirado).

cadena_simple(Heroe, [Heroe, HeroeInspirado | Resto]) :-
    heroes_inspirados_por(Heroe, HeroeInspirado),
    cadena_simple(HeroeInspirado, [HeroeInspirado | Resto]).
