:- use_module(library(pce)).

% Base de conocimientos
planta(jengibre, 'Zingiber officinale', ['Gingerol', 'Shogaol', 'Zingibereno'], ['Extractos de jengibre', 'Capsulas', 'Tes'], ['Antiinflamatorio', 'Antioxidante', 'Antiemetico'], ['Nauseas', 'Artritis', 'Resfriados'], ['Te', 'Infusion', 'Polvo'], 'Asia tropical', 'C:/Proyecto/plantas/Jengibre.jpg').
planta(menta, 'Mentha spicata', ['Mentol', 'Mentona', 'Acido rosmarinico'], ['Aceite esencial', 'Tes', 'Unguentos'], ['Digestivo', 'Carminativo', 'Analgesico'], ['Indigestion', 'Sindorme del intestino irritable', 'Dolores de cabeza'], ['Te', 'Infusion', 'Aceite esencial'], 'Europa y Asia', 'C:/Proyecto/plantas/Menta.jpg').
planta(eucalipto, 'Eucalyptus globulus', ['Eucaliptol', 'Flavonoides', 'Taninos'], ['Aceite esencial', 'Pastillas', 'Jarabes'], ['Descongestionante', 'Expectorante', 'Antiseptico'], ['Resfriados', 'Bronquitis', 'Sinusitis'], ['Inhalacion de vapor', 'Infusion', 'Aceite esencial'], 'Australia', 'C:/Proyecto/plantas/Eucaliptojpg.jpg').
planta(calendula, 'Calendula officinalis', ['Flavonoides', 'Saponinas', 'Carotenoides'], ['Unguentos', 'Tes', 'Tinturas'], ['Antiinflamatorio', 'Cicatrizante', 'Antifungico'], ['Heridas', 'Dermatitis', 'Ulceras gastricas'], ['Infusion', 'Unguento', 'Tintura'], 'Europa meridional', 'C:/Proyecto/plantas/Calendula.jpg').
planta(geranio, 'Pelargonium graveolens', ['Geraniol', 'Citronelol', 'Linalool'], ['Aceite esencial', 'Cremas', 'Tes'], ['Antiinflamatorio', 'Astringente', 'Antiseptico'], ['Eczema', 'Acne', 'Infecciones cutaneas'], ['Infusion', 'Aceite esencial', 'Cremas'], 'Sudafrica', 'C:/Proyecto/plantas/Geranio.jpg').
planta(ginseng, 'Panax ginseng', ['Ginsenocidos', 'Polisacaridos', 'Flavonoides'], ['Extractos', 'Capsulas', 'Tes'], ['Adatogeno', 'Inmunoestimulante', 'Antioxidante'], ['Fatiga', 'Estres', 'Debilidad inmunologica'], ['Infusion', 'Capsulas', 'Extracto'], 'Asia (Corea, China)', 'C:/Proyecto/plantas/Ginseng.jpg').
planta(girasol, 'Helianthus annuus', ['Acido linoleico', 'Vitamina E', 'Fitoesteroles'], ['Aceite de girasol', 'Tes', 'Cremas'], ['Antioxidante', 'Antiinflamatorio', 'Hidratante'], ['Problemas de piel', 'Inflamacion', 'Colesterol alto'], ['Aceite', 'Infusion', 'Cataplasma'], 'America del Norte', 'C:/Proyecto/plantas/Girasol.jpg').
planta(fenogreco, 'Trigonella foenum-graecum', ['Saponinas', 'Flavonoides', 'Alcaloides'], ['Tes', 'Capsulas', 'Polvos'], ['Digestivo', 'Antiinflamatorio', 'Galactagogo'], ['Indigestion', 'Inflamacion', 'Baja produccion de leche materna'], ['Infusion', 'Capsulas', 'Polvo'], 'Mediterraneo oriental', 'C:/Proyecto/plantas/Fenogreco.jpg').
planta(genciana, 'Gentiana lutea', ['Gentiopicroside', 'Amarogentina', 'Xantonas'], ['Extractos', 'Tinturas', 'Tes'], ['Digestivo', 'Antipiretico', 'Estimulante del apetito'], ['Indigestion', 'Fiebre', 'Falta de apetito'], ['Infusion', 'Tintura', 'Extracto'], 'Europa central y meridional', 'C:/Proyecto/plantas/Genciana.jpg').
% Ventana principal
ventana_principal :-
    new(Ventana, dialog('Buscador de Plantas Medicinales')),
    send(Ventana, size, size(400, 300)),
    send(Ventana, append, new(NombreLabel, label(texto, 'Seleccione el nombre de la planta:'))),
    findall(Nombre, planta(Nombre, _, _, _, _, _, _, _, _), ListaPlantas),
    send(Ventana, append, new(NombreComboBox, menu(nombre, cycle))),
    llenar_combo_box(NombreComboBox, ListaPlantas),
    send(Ventana, append, button(buscar, message(@prolog, buscar_planta, NombreComboBox?selection))),
    send(Ventana, append, button('Listar Plantas', message(@prolog, listar_plantas))),
    send(Ventana, append, button('Elementos de Planta', message(@prolog, elementos_de_planta_interfaz, NombreComboBox?selection))),
    send(Ventana, append, button('Enfermedades de Planta', message(@prolog, enfermedades_de_planta_interfaz, NombreComboBox?selection))),
    send(Ventana, append, button('Plantas que Curan Enfermedad', message(@prolog, buscar_plantas_que_curan))),
    send(Ventana, open).

% Llenar el combo box con las opciones de plantas
llenar_combo_box(_, []).
llenar_combo_box(ComboBox, [Cabeza|Cola]) :-
    send(ComboBox, append, Cabeza),
    llenar_combo_box(ComboBox, Cola).

% Buscar y mostrar información de la planta
buscar_planta(Nombre) :-
    format('Buscando planta: ~w~n', [Nombre]),  % Depuración
    (   planta(Nombre, _, _, _, _, _, _, _, _)
    ->  mostrar_planta(Nombre)
    ;   format('La planta ~w no se encuentra en la base de datos.~n', [Nombre]),  % Depuración
        new(VentanaError, dialog('Error')),
        send(VentanaError, append, new(LabelError, label(nombre, 'La planta no se encuentra en la base de datos.'))),
        send(VentanaError, open)
    ).

% Mostrar información de la planta
mostrar_planta(Nombre) :-
    planta(Nombre, NombreCientifico, Elementos, Medicamentos, Efectos, Enfermedades, Preparacion, Origen, Imagen),
    format('Mostrando planta: ~w~n', [Nombre]),  % Depuración
    format('Cargando imagen desde: ~w~n', [Imagen]),  % Depuración
    atomic_list_concat(Elementos, ', ', ElementosStr),
    atomic_list_concat(Medicamentos, ', ', MedicamentosStr),
    atomic_list_concat(Efectos, ', ', EfectosStr),
    atomic_list_concat(Enfermedades, ', ', EnfermedadesStr),
    atomic_list_concat(Preparacion, ', ', PreparacionStr),
    new(Ventana, dialog(Nombre)),
    send(Ventana, size, size(600, 400)),  % Aumentamos el tamaño para acomodar la imagen
    send(Ventana, append, new(Label, label(nombre, Nombre))),
    send(Ventana, append, new(Label2, label(nombre_cientifico, NombreCientifico))),
    send(Ventana, append, new(Label3, label(elementos, string('Elementos: %s', ElementosStr)))),
    send(Ventana, append, new(Label4, label(medicamentos, string('Medicamentos: %s', MedicamentosStr)))),
    send(Ventana, append, new(Label5, label(efectos, string('Efectos: %s', EfectosStr)))),
    send(Ventana, append, new(Label6, label(enfermedades, string('Enfermedades: %s', EnfermedadesStr)))),
    send(Ventana, append, new(Label7, label(preparacion, string('Modos de preparación: %s', PreparacionStr)))),
    send(Ventana, append, new(Label8, label(origen, string('Origen: %s', Origen)))),
    (   catch(new(ImagenGrafica, image(Imagen)), _, fail)
    ->  new(Bitmap, bitmap(ImagenGrafica)),
        new(Figura, figure),
        send(Figura, display, Bitmap),
        new(Dispositivo, device),
        send(Dispositivo, display, Figura),
        send(Ventana, display, Dispositivo, point(10, 250)),  % Ajusta la ubicación de la imagen
        send(Ventana, open)
    ;   format('Error al cargar la imagen: ~w~n', [Imagen]),  % Depuración
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

% Elementos de una planta específica
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

% Enfermedades de una planta específica
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

% Plantas que curan una enfermedad específica
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

:- initialization(ventana_principal).
