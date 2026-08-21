% ============================================================
% TESTS
% ============================================================

:- begin_tests(tpIntegrador, []).


% ------------------------------------------------------------
% TESTS DEL PUNTO 1
% ------------------------------------------------------------

test(humano_esta_vivo_despues_de_nacer):-
    esta_vivo(kanne, 1370).

test(persona_no_esta_viva_antes_de_nacer, [fail]):-
    esta_vivo(kanne, 1300).

test(humano_no_esta_vivo_si_supero_su_expectativa, [fail]):-
    esta_vivo(kanne, 2000).

test(enano_esta_vivo_en_el_limite_de_su_expectativa):-
    esta_vivo(voll, 1550).

test(enano_no_esta_vivo_despues_de_su_expectativa, [fail]):-
    esta_vivo(voll, 1551).

test(elfo_sigue_vivo_indefinidamente, [nondet]):-
    esta_vivo(serie, 5000).

test(persona_esta_viva_en_el_anio_en_que_nace):-
    esta_vivo(kanne, 1365).

test(humano_esta_vivo_en_el_limite_de_su_expectativa):-
    esta_vivo(kanne, 1445).

test(humano_no_esta_vivo_despues_del_limite_de_su_expectativa, [fail]):-
    esta_vivo(kanne, 1446).


% ------------------------------------------------------------
% TESTS DEL PUNTO 2
% ------------------------------------------------------------

test(persona_no_recuerda_una_hazania_antes_de_conocerla, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1380).

test(recuerdo_por_cancion_esta_vigente_dentro_del_plazo, [nondet]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1400).

test(recuerdo_por_cancion_deja_de_estar_vigente_al_superar_el_plazo, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1410).

test(recuerdo_por_libro_esta_vigente_en_el_limite):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), voll, 1450).

test(recuerdo_por_libro_deja_de_estar_vigente_al_superar_el_plazo, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), voll, 1460).

test(recuerdo_por_haber_presenciado_permanece_mientras_la_persona_esta_viva, [nondet]):-
    es_recordada_por(hazania(rescatar_a_la_hermana_de_wirbel, _, _), wirbel, 1430).

test(recuerdo_no_permanece_si_la_persona_ya_no_esta_viva, [fail]):-
    es_recordada_por(hazania(rescatar_a_la_hermana_de_wirbel, _, _), wirbel, 1440).

test(hazania_con_una_sola_version_esta_corroborada, [nondet]):-
    esta_corroborada(rescatar_a_la_hermana_de_wirbel).

test(hazania_con_versiones_distintas_no_esta_corroborada, [fail]):-
    esta_corroborada(destruir_al_demonio_aura).

test(hazania_pasa_al_olvido_si_nadie_la_recuerda, [nondet]):-
    paso_al_olvido(destruir_al_demonio_aura, 1460).

test(hazania_no_pasa_al_olvido_si_alguien_la_recuerda, [fail]):-
    paso_al_olvido(destruir_al_demonio_aura, 1440).

test(recuerdo_comienza_en_el_anio_en_que_se_conoce, [nondet]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1393).

test(recuerdo_por_cancion_esta_vigente_en_el_limite, [nondet]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1408).

test(recuerdo_por_cancion_no_esta_vigente_despues_del_limite, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), lawine, 1409).

test(recuerdo_por_libro_no_esta_vigente_despues_del_limite, [fail]):-
    es_recordada_por(hazania(destruir_al_demonio_aura, _, _), voll, 1451).

% ------------------------------------------------------------
% TESTS DEL PUNTO 3
% ------------------------------------------------------------

test(habitante_recuerda_hazania_conmemorada_por_estatua_en_buen_estado, [nondet]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), lawine, 1400).

test(habitante_no_recuerda_hazania_si_la_estatua_no_esta_en_buen_estado, [fail]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), lawine, 1390).

test(habitante_recuerda_hazania_conmemorada_por_dia_festivo, [nondet]):-
    es_recordada_por(hazania(destruir_al_rey_demonio, _, _), fern, 1400).

test(persona_nacida_despues_de_la_conmemoracion_la_conoce_al_nacer, [nondet]):-
    conoce(lawine, hazania(destruir_al_rey_demonio, _, _), 1372, _).

test(persona_nacida_antes_de_la_conmemoracion_la_conoce_al_comenzar, [nondet]):-
    conoce(lernen, hazania(destruir_a_schlat_el_omnisciente, _, _), 1340, _).

test(habitante_de_otro_pueblo_no_conoce_la_conmemoracion, [fail]):-
    conoce(voll, hazania(destruir_a_schlat_el_omnisciente, _, _), _, _).

test(estatua_de_marmol_esta_en_buen_estado_en_el_limite):-
    esta_en_buen_estado(estatua(el_heroe_del_sur, marmol, 1340), 1370).

test(estatua_de_marmol_no_esta_en_buen_estado_despues_del_limite, [fail]):-
    esta_en_buen_estado(estatua(el_heroe_del_sur, marmol, 1340), 1371).

test(estatua_de_bronce_esta_en_buen_estado_en_el_limite):-
    esta_en_buen_estado(estatua(el_equipo_de_heroes, bronce, 1370), 1385).

test(estatua_de_bronce_no_esta_en_buen_estado_despues_del_limite, [fail]):-
    esta_en_buen_estado(estatua(el_equipo_de_heroes, bronce, 1370), 1386).

test(mantenimiento_vuelve_a_dejar_la_estatua_en_buen_estado, [nondet]):-
    esta_en_buen_estado(estatua(el_equipo_de_heroes, bronce, 1370), 1401).

test(estatua_no_esta_en_buen_estado_antes_de_ser_construida, [fail]):-
    esta_en_buen_estado(estatua(el_equipo_de_heroes, bronce, 1370), 1369).


% ------------------------------------------------------------
% TESTS DEL PUNTO 4
% ------------------------------------------------------------

test(pueblo_recuerda_hazania_conmemorada_por_sus_habitantes, [nondet]):-
    pueblo_recuerda(weise, hazania(destruir_al_rey_demonio, _, _), 1400).

test(pueblo_recuerda_hazania_presenciada_por_un_habitante, [nondet]):-
    pueblo_recuerda(klares, hazania(rescatar_a_la_hermana_de_wirbel, _, _), 1395).

test(pueblo_no_recuerda_hazania_si_ningun_habitante_la_recuerda, [fail]):-
    pueblo_recuerda(klares, hazania(destruir_al_rey_demonio, _, _), 1395).

test(paginas_leidas_suma_los_libros_leidos_en_el_anio):-
    paginas_leidas_en_un_pueblo(weise, 1335, 100).

test(paginas_leidas_es_cero_si_no_se_leyo_ningun_libro_en_el_anio):-
    paginas_leidas_en_un_pueblo(weise, 1336, 0).

test(pueblo_con_mayor_cantidad_de_paginas_es_mas_lector, [nondet]):-
    pueblo_mas_lector(ende, 1400).

test(pueblo_es_musical_si_la_mayoria_de_hazanias_se_recuerda_por_cancion, [nondet]):-
    es_musical(auberst, 1395).

test(pueblo_no_es_musical_si_la_mayoria_no_se_recuerda_por_cancion, [fail]):-
    es_musical(weise, 1400).

test(pueblo_no_es_musical_si_solo_la_mitad_se_recuerda_por_cancion, [fail]):-
    es_musical(auberst, 1400).

test(pueblo_es_chismoso_si_ninguna_hazania_recordada_esta_corroborada, [nondet]):-
    es_chismoso(ende, 1420).

test(pueblo_no_es_chismoso_si_recuerda_alguna_hazania_corroborada, [fail]):-
    es_chismoso(weise, 1400).

test(hazania_es_importante_si_todos_los_habitantes_vivos_la_recuerdan, [nondet]):-
    hazania_es_importante(weise, hazania(destruir_al_rey_demonio, _, _), 1400).

test(hazania_no_es_importante_si_no_todos_los_habitantes_vivos_la_recuerdan, [fail]):-
    hazania_es_importante(weise, hazania(recuperar_al_gato_perdido, _, _), 1400).

test(pueblo_vive_tiempos_sin_precedentes_si_todas_las_hazanias_importantes_fueron_presenciadas, [nondet]):-
    esta_viviendo_tiempos_sin_precedentes(klares, 1395).

test(pueblo_no_vive_tiempos_sin_precedentes_si_alguna_hazania_importante_no_fue_presenciada, [fail]):-
    esta_viviendo_tiempos_sin_precedentes(weise, 1400).

test(pueblo_no_es_mas_lector_si_otro_leyo_mas_paginas, [fail]):-
    pueblo_mas_lector(weise, 1400).

test(pueblo_mas_lector_permite_generar_el_pueblo, [nondet]):-
    pueblo_mas_lector(Pueblo, 1400),
    Pueblo = ende.


% ------------------------------------------------------------
% TESTS DEL PUNTO 5
% ------------------------------------------------------------

test(persona_que_participo_en_una_hazania_conocida_es_heroe, [nondet]):-
    es_heroe(frieren).

test(persona_que_no_participo_en_hazanias_conocidas_no_es_heroe, [fail]):-
    es_heroe(wirbel).

test(participante_de_hazania_conmemorada_puede_inspirar_a_un_heroe, [nondet]):-
    quienes_inspiraron_a(fern, frieren).

test(participante_de_hazania_presenciada_puede_inspirar_a_un_heroe, [nondet]):-
    quienes_inspiraron_a(frieren, stark).

test(heroe_que_no_conoce_hazanias_no_tiene_inspiradores, [fail]):-
    quienes_inspiraron_a(eisen, _).

test(cadena_valida_puede_tener_varios_heroes, [nondet]):-
    cadena_de_inspiracion_entre_heroes(himmel, [himmel, fern, frieren, denken]).

test(cadena_no_es_valida_si_falta_una_relacion_de_inspiracion, [fail]):-
    cadena_de_inspiracion_entre_heroes(denken, [denken, frieren]).

test(cadena_no_es_valida_si_un_heroe_se_repite, [fail]):-
    cadena_de_inspiracion_entre_heroes(frieren, [frieren, fern, frieren]).

test(cadena_valida_puede_tener_dos_heroes, [nondet]):-
    cadena_de_inspiracion_entre_heroes(himmel, [himmel, frieren]).

test(cadena_valida_puede_continuar_con_mas_inspiraciones, [nondet]):-
    cadena_de_inspiracion_entre_heroes(himmel, [himmel, frieren, fern]).


% ------------------------------------------------------------
% TESTS DEL PUNTO 6 
% ------------------------------------------------------------

test(dream_team_valido_incluye_al_heroe_y_un_antecesor, [nondet]):-
    dream_team(fern, [fern, himmel]).

test(orden_de_integrantes_no_afecta_al_dream_team, [nondet]):-
    dream_team(fern, [himmel, fern]).

test(dream_team_valido_puede_incluir_varios_antecesores, [nondet]):-
    dream_team(fern, [himmel, frieren, fern]).

test(dream_team_no_es_valido_si_solo_incluye_al_heroe, [fail]):-
    dream_team(fern, [fern]).

test(dream_team_no_es_valido_si_no_incluye_al_heroe, [fail]):-
    dream_team(fern, [frieren]).

test(dream_team_no_puede_incluir_heroes_posteriores_al_heroe, [fail]):-
    dream_team(fern, [fern, frieren, denken]).

test(dream_team_no_puede_tener_integrantes_repetidos, [fail]):-
    dream_team(fern, [fern, himmel, himmel]).

test(dream_team_permite_generar_el_equipo, [nondet]):-
    dream_team(fern, Equipo),
    member(himmel, Equipo).

test(dream_team_permite_generar_el_heroe, [nondet]):-
    dream_team(Heroe, [fern, himmel]),
    Heroe = fern.

test(dream_team_permite_generar_heroe_y_equipo, [nondet]):-
    dream_team(Heroe, Equipo),
    member(Heroe, Equipo).

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
    recuerda_de_forma(Hazania, Persona, Anio, _).

recuerda_de_forma(Hazania, Persona, Anio, FormaConocimiento):-
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
    forall(
        conoce(_, hazania(Nombre_Hazania, OtrosRealizadores, OtroLugar), _, _),
        misma_version(Realizadores, Lugar_de_Hazania, OtrosRealizadores, OtroLugar)
    ).

misma_version(Realizadores, Lugar, Realizadores, Lugar).


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

anio_en_que_conocio(AnioNacimiento, AnioInicio, AnioConocimiento):-
    max_list([AnioNacimiento, AnioInicio], AnioConocimiento).
%%  max_member(AnioConocimiento, [AnioNacimiento, AnioInicio]).


% Estado de conservación de las estatuas

durabilidad_del_material(marmol, 30).
durabilidad_del_material(bronce, 15).

esta_en_buen_estado(estatua(NombreEstatua, Material, AnioConstruccion), AnioConsulta):-
    conmemora(_, _, estatua(NombreEstatua, Material, AnioConstruccion)),
    durabilidad_del_material(Material, Durabilidad),
    puesta_en_condiciones(estatua(NombreEstatua, Material, AnioConstruccion),AnioPuestaEnCondiciones),
    AnioPuestaEnCondiciones =< AnioConsulta,
    AnioConsulta =< AnioPuestaEnCondiciones + Durabilidad.

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
    habitante(_, _, _, Pueblo),
    findall(Paginas, 
        (
        habitante(Persona, _, _, Pueblo),
        conoce(Persona, _, Anio, libro(Paginas))
        ),
        PaginasLeidas),
    sum_list(PaginasLeidas, PaginasTotales).

% III
    
pueblo_mas_lector(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    paginas_leidas_en_un_pueblo(Pueblo, Anio, PaginasLeidas),
    forall(
        habitante(_, _, _, OtroPueblo),
        (
        paginas_leidas_en_un_pueblo(OtroPueblo, Anio, PaginasLeidasOtroPueblo),
        PaginasLeidas >= PaginasLeidasOtroPueblo
        )
    ).

% IV

es_musical(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    findall(Hazania, (pueblo_recuerda(Pueblo, Hazania, Anio), se_recuerda_por_cancion(Pueblo, Hazania, Anio)), HazaniasRecordadasPorCancion),
    findall(Hazania, (pueblo_recuerda(Pueblo, Hazania, Anio), not(se_recuerda_por_cancion(Pueblo, Hazania, Anio))), HazaniasNoRecordadasPorCancion),

    length(HazaniasRecordadasPorCancion, CantidadRecordadasPorCancion),
    length(HazaniasNoRecordadasPorCancion, CantidadNoRecordadasPorCancion),
    CantidadRecordadasPorCancion > CantidadNoRecordadasPorCancion.

se_recuerda_por_cancion(Pueblo, Hazania, Anio):-
    habitante(Persona, _, _, Pueblo),
    recuerda_de_forma(Hazania, Persona, Anio, cancion).

% V

es_chismoso(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    not(hay_hazania_corroborada(Pueblo, Anio)).

hay_hazania_corroborada(Pueblo, Anio):-
    pueblo_recuerda(Pueblo, hazania(NombreHazania, _, _),Anio),
    esta_corroborada(NombreHazania).

% VI

hazania_es_importante(Pueblo, Hazania, Anio):-
    pueblo_recuerda(Pueblo, Hazania, Anio),
    forall(
        (
            habitante(Persona, _, _, Pueblo),
            esta_vivo(Persona, Anio)
        ),
        es_recordada_por(Hazania, Persona, Anio)
    ).

% VII

esta_viviendo_tiempos_sin_precedentes(Pueblo, Anio):-
    habitante(_, _, _, Pueblo),
    forall(
        hazania_es_importante(Pueblo, Hazania, Anio),
        pueblo_recuerda_por_presenciar(Pueblo, Hazania, Anio)
    ).

pueblo_recuerda_por_presenciar(Pueblo, Hazania, Anio):-
    habitante(Persona, _, _, Pueblo),
    recuerda_de_forma(Hazania, Persona, Anio, presencio).

% ------------------------------------------------------------
% PUNTO 5: INSPIRACIÓN
% ------------------------------------------------------------

% a
es_heroe(Persona):-
    conoce(_, Hazania, _, _),
    participa_en_hazania(Persona, Hazania).

participa_en_hazania(Persona, hazania(_, Heroes, _)):-
    member(Persona, Heroes).

% b
quienes_inspiraron_a(Heroe, Inspirador):-
    es_heroe(Heroe),
    conoce(Heroe, Hazania, _, _),
    participa_en_hazania(Inspirador, Hazania),
    Inspirador \= Heroe.

inspiro_a(Inspirador, Heroe):-
    quienes_inspiraron_a(Heroe, Inspirador).


% c

cadena_de_inspiracion_entre_heroes(Heroe, Cadena):-
    cadena_desde(Heroe, [Heroe], Cadena).

cadena_desde(Heroe, HeroesYaIncluidos, [Heroe, HeroeInspirado]):-
    inspiro_a(Heroe, HeroeInspirado),
    not(member(HeroeInspirado, HeroesYaIncluidos)).

cadena_desde(Heroe, HeroesYaIncluidos, [Heroe | RestoCadena]):-
    inspiro_a(Heroe, HeroeInspirado),
    not(member(HeroeInspirado, HeroesYaIncluidos)),
    cadena_desde(
        HeroeInspirado,
        [HeroeInspirado | HeroesYaIncluidos],
        RestoCadena
    ).

% ------------------------------------------------------------
% PUNTO 6: DREAM TEAM
% ------------------------------------------------------------

dream_team(Heroe, Equipo):-
    cadena_de_inspiracion_entre_heroes(_, Cadena),
    append(_, [Heroe], Cadena),
    cantidad_valida_de_integrantes(Cadena, Equipo),
    miembros_de_cadena(Equipo, Cadena),
    member(Heroe, Equipo),
    sin_repetidos(Equipo).


cantidad_valida_de_integrantes(Cadena, Equipo):-
    length(Cadena, CantidadHeroes),
    between(2, CantidadHeroes, CantidadEquipo),
    length(Equipo, CantidadEquipo).


miembros_de_cadena([], _).
miembros_de_cadena([Heroe | RestoEquipo], Cadena):-
    member(Heroe, Cadena),
    miembros_de_cadena(RestoEquipo, Cadena).


sin_repetidos([]).
sin_repetidos([Heroe | RestoEquipo]):-
    not(member(Heroe, RestoEquipo)),
    sin_repetidos(RestoEquipo).
