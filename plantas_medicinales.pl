:- use_module(library(pce)).

% Base de conocimientos
planta(jengibre, 'Zingiber officinale', ['Gingerol', 'Shogaol', 'Zingibereno'], ['Extractos de jengibre', 'Capsulas', 'Tes'], ['Antiinflamatorio', 'Antioxidante', 'Antiemetico'], ['Nauseas', 'Artritis', 'Resfriados'], ['Te', 'Infusion', 'Polvo'], 'Asia tropical', 'C:/Proyecto/plantas/Jengibre.jpg').
planta(menta, 'Mentha spicata', ['Mentol', 'Mentona', 'Acido rosmarinico'], ['Aceite esencial', 'Tes', 'Unguentos'], ['Digestivo', 'Carminativo', 'Analgesico'], ['Indigestion', 'Sindorme del intestino irritable', 'Dolores de cabeza'], ['Te', 'Infusion', 'Aceite esencial'], 'Europa y Asia', 'C:/Proyecto/plantas/Menta.jpg').
planta(eucalipto, 'Eucalyptus globulus', ['Eucaliptol', 'Flavonoides', 'Taninos'], ['Aceite esencial', 'Pastillas', 'Jarabes'], ['Descongestionante', 'Expectorante', 'Antiseptico'], ['Resfriados', 'Bronquitis', 'Sinusitis', 'Tos'], ['Inhalacion de vapor', 'Infusion', 'Aceite esencial'], 'Australia', 'C:/Proyecto/plantas/Eucalipto.jpg').
planta(calendula, 'Calendula officinalis', ['Flavonoides', 'Saponinas', 'Carotenoides'], ['Unguentos', 'Tes', 'Tinturas'], ['Antiinflamatorio', 'Cicatrizante', 'Antifungico'], ['Heridas', 'Dermatitis', 'Ulceras gastricas'], ['Infusion', 'Unguento', 'Tintura'], 'Europa meridional', 'C:/Proyecto/plantas/Calendula.jpg').
planta(geranio, 'Pelargonium graveolens', ['Geraniol', 'Citronelol', 'Linalool'], ['Aceite esencial', 'Cremas', 'Tes'], ['Antiinflamatorio', 'Astringente', 'Antiseptico'], ['Eczema', 'Acne', 'Infecciones cutaneas'], ['Infusion', 'Aceite esencial', 'Cremas'], 'Sudafrica', 'C:/Proyecto/plantas/Geranio.jpg').
planta(ginseng, 'Panax ginseng', ['Ginsenocidos', 'Polisacaridos', 'Flavonoides'], ['Extractos', 'Capsulas', 'Tes'], ['Adatogeno', 'Inmunoestimulante', 'Antioxidante'], ['Fatiga', 'Estres', 'Debilidad inmunologica'], ['Infusion', 'Capsulas', 'Extracto'], 'Asia (Corea, China)', 'C:/Proyecto/plantas/Ginseng.jpg').
planta(girasol, 'Helianthus annuus', ['Acido linoleico', 'Vitamina E', 'Fitoesteroles'], ['Aceite de girasol', 'Tes', 'Cremas'], ['Antioxidante', 'Antiinflamatorio', 'Hidratante'], ['Problemas de piel', 'Inflamacion', 'Colesterol alto'], ['Aceite', 'Infusion', 'Cataplasma'], 'America del Norte', 'C:/Proyecto/plantas/Girasol.jpg').
planta(fenogreco, 'Trigonella foenum-graecum', ['Saponinas', 'Flavonoides', 'Alcaloides'], ['Tes', 'Capsulas', 'Polvos'], ['Digestivo', 'Antiinflamatorio', 'Galactagogo'], ['Indigestion', 'Inflamacion', 'Baja produccion de leche materna'], ['Infusion', 'Capsulas', 'Polvo'], 'Mediterraneo oriental', 'C:/Proyecto/plantas/Fenogreco.jpg').

% Base de conocimientos para medicamentos
medicamentos_por_planta('digital', ['digitalina', 'tonico cardiaco']).
medicamentos_por_planta('opio', ['morfina', 'codeina']).
medicamentos_por_planta('ipeca', ['emetina']).
medicamentos_por_planta('nvez vomica', ['estricnina']).
medicamentos_por_planta('eleboro blanco', ['veratrina']).
medicamentos_por_planta('colchico', ['colquisina']).
medicamentos_por_planta('belladona', ['atropina']).
medicamentos_por_planta('quina', ['quinna']).
medicamentos_por_planta('cacao', ['teobromina']).
medicamentos_por_planta('retama', ['esparteina']).
medicamentos_por_planta('coca', ['cocaina']).
medicamentos_por_planta('peyote', ['mescalina', '30 aleabides +']).
medicamentos_por_planta('efedra', ['eferina']).
medicamentos_por_planta('bareasco', ['hormonas']).
medicamentos_por_planta('nenufar amarillo', ['lutevurina']).
medicamentos_por_planta('ñame', ['diosponina']).
medicamentos_por_planta('artemisa', ['tauresmiswa']).
medicamentos_por_planta('semilla de yute', ['olirotisida']).
medicamentos_por_planta('toloache', ['acido lisergico', 'lsd']).
medicamentos_por_planta('eucalipto', ['eucaliptol']).
medicamentos_por_planta('rosal', ['vitamina c', 'quersitrina']).

% Base de conocimientos para agrupaciones
grupo_planta(afrodisiaca, ['Ginseng']).
grupo_planta(analgesica, ['Menta', 'Geranio', 'Calendula']).
grupo_planta(anestesica, ['Belladona']).
grupo_planta(antidiaerrica, ['Fenogreco', 'Calendula']).
grupo_planta(antiespasmodica, ['Menta', 'Belladona']).
grupo_planta(antiflogistica, ['Eucalipto', 'Geranio', 'Calendula']).
grupo_planta(antipiredica, ['Girasol', 'Calendula']).
grupo_planta(antiseptica, ['Geranio', 'Eucalipto', 'Calendula']).
grupo_planta(aperitiva, ['Ginseng']).
grupo_planta(astringente, ['Geranio']).
grupo_planta(carminativa, ['Menta']).
grupo_planta(colagoga, ['Jengibre']).
grupo_planta(depurativa, ['Girasol', 'Fenogreco']).
grupo_planta(diaforetica, ['Girasol']).
grupo_planta(digestiva, ['Menta', 'Fenogreco']).
grupo_planta(diuretica, ['Fenogreco', 'Calendula']).
grupo_planta(emetica, ['Ipeca']).
grupo_planta(emenagoga, ['Calendula']).
grupo_planta(estupefaciente, ['Opio', 'Coca']).
grupo_planta(expectorante, ['Eucalipto']).
grupo_planta(hemostatica, ['Calendula']).
grupo_planta(hepatica, ['Girasol']).
grupo_planta(laxante, ['Fenogreco']).
grupo_planta(pectoral, ['Eucalipto']).
grupo_planta(sedante, ['Menta', 'Calendula']).
grupo_planta(tonica, ['Ginseng']).
grupo_planta(toxica, ['Belladona', 'Digital', 'Coca']).
grupo_planta(vermifuga, ['Artemisa']).
grupo_planta(vulneraria, ['Calendula']).

% Ventana principal
ventana_principal :-
    new(Ventana, dialog('Buscador de Plantas Medicinales')),
    send(Ventana, size, size(600, 400)),
    send(Ventana, append, new(NombreLabel, label(texto, 'Seleccione el nombre de la planta:'))),
    findall(Nombre, planta(Nombre, _, _, _, _, _, _, _, _), ListaPlantas),
    send(Ventana, append, new(NombreComboBox, menu(nombre, cycle))),
    llenar_combo_box(NombreComboBox, ListaPlantas),
    send(Ventana, append, button(buscar, message(@prolog, buscar_planta, NombreComboBox?selection))),
    send(Ventana, append, button('Listar Plantas', message(@prolog, listar_plantas))),
    send(Ventana, append, button('Elementos de Planta', message(@prolog, elementos_de_planta_interfaz, NombreComboBox?selection))),
    send(Ventana, append, button('Enfermedades de Planta', message(@prolog, enfermedades_de_planta_interfaz, NombreComboBox?selection))),
    send(Ventana, append, button('Plantas que Curan Enfermedad', message(@prolog, buscar_plantas_que_curan))),
    send(Ventana, append, button('Botiquin', message(@prolog, mostrar_botiquin))),

    % Combo box para seleccionar plantas medicinales
    send(Ventana, append, new(MedicinaComboBox, menu(medicina, cycle))),
    llenar_combo_box_medicina(MedicinaComboBox),
    send(Ventana, append, button('Mostrar Medicamentos', message(@prolog, mostrar_medicamentos, MedicinaComboBox?selection))),

    % Combo box para seleccionar grupos de plantas medicinales
    send(Ventana, append, new(GrupoComboBox, menu(grupo, cycle))),
    llenar_combo_box_grupos(GrupoComboBox),
    send(Ventana, append, button('Mostrar Plantas por Grupo', message(@prolog, mostrar_plantas_por_grupo, GrupoComboBox?selection))),

    send(Ventana, open).

% Llenar el combo box con las opciones de plantas
llenar_combo_box(_, []).
llenar_combo_box(ComboBox, [Cabeza|Cola]) :-
    send(ComboBox, append, Cabeza),
    llenar_combo_box(ComboBox, Cola).

% Llenar el combo box con las plantas medicinales
llenar_combo_box_medicina(ComboBox) :-
    PlantasMedicinales = [
        'digital', 'opio', 'ipeca', 'nvez vomica', 'eleboro blanco', 
        'colchico', 'belladona', 'quina', 'cacao', 'retama', 'coca', 
        'peyote', 'efedra', 'bareasco', 'nenufar amarillo', 'ñame', 
        'artemisa', 'semilla de yute', 'toloache', 'eucalipto', 'rosal'
    ],
    llenar_combo_box(ComboBox, PlantasMedicinales).

% Llenar el combo box con los grupos de plantas
llenar_combo_box_grupos(ComboBox) :-
    Grupos = [
        afrodisiaca, analgesica, anestesica, antidiaerrica, antiespasmodica, 
        antiflogistica, antipiredica, antiseptica, aperitiva, astringente, 
        carminativa, colagoga, depurativa, diaforetica, digestiva, diuretica, 
        emetica, emenagoga, estupefaciente, expectorante, hemostatica, hepatica, 
        laxante, pectoral, sedante, tonica, toxica, vermifuga, vulneraria
    ],
    llenar_combo_box(ComboBox, Grupos).

% Buscar y mostrar informacion de la planta
buscar_planta(Nombre) :-
    format('Buscando planta: ~w~n', [Nombre]),  % Depuracion
    (   planta(Nombre, _, _, _, _, _, _, _, _)
    ->  mostrar_planta(Nombre)
    ;   format('La planta ~w no se encuentra en la base de datos.~n', [Nombre]),  % Depuracion
        new(VentanaError, dialog('Error')),
        send(VentanaError, append, new(LabelError, label(nombre, 'La planta no se encuentra en la base de datos.'))),
        send(VentanaError, open)
    ).

% Mostrar informacion de la planta
mostrar_planta(Nombre) :-
    planta(Nombre, NombreCientifico, Elementos, Medicamentos, Efectos, Enfermedades, Preparacion, Origen, Imagen),
    format('Mostrando planta: ~w~n', [Nombre]),  % Depuracion
    format('Cargando imagen desde: ~w~n', [Imagen]),  % Depuracion
    atomic_list_concat(Elementos, ', ', ElementosStr),
    atomic_list_concat(Medicamentos, ', ', MedicamentosStr),
    atomic_list_concat(Efectos, ', ', EfectosStr),
    atomic_list_concat(Enfermedades, ', ', EnfermedadesStr),
    atomic_list_concat(Preparacion, ', ', PreparacionStr),
    new(Ventana, dialog(Nombre)),
    send(Ventana, size, size(600, 400)),  % Aumentamos el tamano para acomodar la imagen
    send(Ventana, append, new(Label, label(nombre, Nombre))),
    send(Ventana, append, new(Label2, label(nombre_cientifico, NombreCientifico))),
    send(Ventana, append, new(Label3, label(elementos, string('Elementos: %s', ElementosStr)))),
    send(Ventana, append, new(Label4, label(medicamentos, string('Medicamentos: %s', MedicamentosStr)))),
    send(Ventana, append, new(Label5, label(efectos, string('Efectos: %s', EfectosStr)))),
    send(Ventana, append, new(Label6, label(enfermedades, string('Enfermedades: %s', EnfermedadesStr)))),
    send(Ventana, append, new(Label7, label(preparacion, string('Modos de preparacion: %s', PreparacionStr)))),
    send(Ventana, append, new(Label8, label(origen, string('Origen: %s', Origen)))),
    (   catch(new(ImagenGrafica, image(Imagen)), _, fail)
    ->  new(Bitmap, bitmap(ImagenGrafica)),
        new(Figura, figure),
        send(Figura, display, Bitmap),
        new(Dispositivo, device),
        send(Dispositivo, display, Figura),
        send(Ventana, display, Dispositivo, point(10, 250)),  % Ajusta la ubicacion de la imagen
        send(Ventana, open)
    ;   format('Error al cargar la imagen: ~w~n', [Imagen]),  % Depuracion
        new(VentanaError, dialog('Error al cargar la imagen')),
        send(VentanaError, append, new(LabelError, label(nombre, string('Error al cargar la imagen desde: %s', Imagen)))),
        send(VentanaError, open),
        send(Ventana, open)
    ).

% Listar todas las plantas
listar_plantas :-
    findall(NombreComun, planta(NombreComun, _, _, _, _, _, _, _, _), ListaPlantas),
    atomic_list_concat(ListaPlantas, ', ', PlantasStr),
    new(D, dialog('Lista de Plantas')),
    send(D, append, new(L, label(plantas, PlantasStr))),
    send(D, open).

% Elementos de una planta especifica
elementos_de_planta_interfaz(Nombre) :-
    (   planta(Nombre, _, Elementos, _, _, _, _, _, _)
    ->  atomic_list_concat(Elementos, ', ', ElementosStr),
        new(D, dialog('Elementos de Planta')),
        send(D, append, new(L, label(elementos, string('Elementos en %s: %s', Nombre, ElementosStr)))),
        send(D, open)
    ;   new(VentanaError, dialog('Error')),
        send(VentanaError, append, new(LabelError, label(nombre, 'La planta no se encuentra en la base de datos.'))),
        send(VentanaError, open)
    ).

% Enfermedades de una planta especifica
enfermedades_de_planta_interfaz(Nombre) :-
    (   planta(Nombre, _, _, _, _, Enfermedades, _, _, _)
    ->  atomic_list_concat(Enfermedades, ', ', EnfermedadesStr),
        new(D, dialog('Enfermedades de Planta')),
        send(D, append, new(L, label(enfermedades, string('Enfermedades que cura %s: %s', Nombre, EnfermedadesStr)))),
        send(D, open)
    ;   new(VentanaError, dialog('Error')),
        send(VentanaError, append, new(LabelError, label(nombre, 'La planta no se encuentra en la base de datos.'))),
        send(VentanaError, open)
    ).

% Buscar plantas que curan una enfermedad
buscar_plantas_que_curan :-
    new(D, dialog('Buscar Plantas por Enfermedad')),
    send(D, append, new(E, text_item('Ingrese la enfermedad:'))),
    send(D, append, button(buscar, message(@prolog, plantas_que_curan_interfaz, E?selection))),
    send(D, open).

% Plantas que curan una enfermedad especifica
plantas_que_curan_interfaz(Enfermedad) :-
    findall(NombreComun, (planta(NombreComun, _, _, _, _, Enfermedades, _, _, _), member(Enfermedad, Enfermedades)), ListaPlantas),
    (   ListaPlantas \= []
    ->  atomic_list_concat(ListaPlantas, ', ', PlantasStr),
        new(D, dialog('Plantas que Curan Enfermedad')),
        send(D, append, new(L, label(plantas, string('Plantas que curan %s: %s', Enfermedad, PlantasStr)))),
        send(D, open)
    ;   new(VentanaError, dialog('Error')),
        send(VentanaError, append, new(LabelError, label(nombre, 'No se encontraron plantas que curen esa enfermedad.'))),
        send(VentanaError, open)
    ).

% Mostrar botiquin
mostrar_botiquin :-
    PlantasBotiquin = [
        'Anis Estrella', 'Menta', 'Arnica', 'Salvia', 'Tilia', 'Eucalipto', 
        'Yerbabuena', 'Manzanilla', 'Cola de Caballo', 'Romero', 'Toronjil', 
        'Sanguinaria', 'Linaza', 'Hamamelis', 'Zarzaparrilla', 'Boldo', 
        'Diente de Leon', 'Azahar', 'Malva', 'Marrubio', 'Rosal'
    ],
    atomic_list_concat(PlantasBotiquin, ', ', PlantasStr),
    new(D, dialog('Botiquin de Plantas')),
    send(D, append, new(L, label(plantas, PlantasStr))),
    send(D, open).

% Mostrar medicamentos de una planta especifica
mostrar_medicamentos(Planta) :-
    medicamentos_por_planta(Planta, Medicamentos),
    atomic_list_concat(Medicamentos, ', ', MedicamentosStr),
    new(D, dialog(string('Medicamentos producidos por %s', Planta))),
    send(D, append, new(L, label(medicamentos, MedicamentosStr))),
    send(D, open).

% Mostrar plantas por grupo
mostrar_plantas_por_grupo(Grupo) :-
    grupo_planta(Grupo, Plantas),
    atomic_list_concat(Plantas, ', ', PlantasStr),
    new(D, dialog(string('%s', Grupo))),
    send(D, append, new(L, label(plantas, PlantasStr))),
    send(D, open).

:- initialization(ventana_principal).
