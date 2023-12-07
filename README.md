# Orca interactions in the Iberian Peninsula - WIP

Proyecto sobre la interacción de orcas en aguas de la península ibérica y alrededores.

**METER ALGUNA IMAGEN AQUÍ**

##  Introducción

Este proyecto forma parte del trabajo final del curso de Análisis de Datos en Ironhack, cursado de octubre a diciembre del año 2023.

A continuacón se incluye el proceso llevado a cabo desde la obtención de la base de datos hasta el posterior análisis y presentación de resultados vía PowerBI.

Se ha escogido como foco del estudio el reciente auge en casos de interacciones de orcas con barcos la Península Ibérica y alrededores. Motivado por conocer si existen factores en común entre las interacciones se decide graficar y presentar los datos una vez se ha montado una base de datos consistente.

## Obtención BBDD
En primer lugar, resulta fundamental dar con una base de datos de hechos reales en los que poder basar el estudio. PAra ello se deben mencionar dos grandes partes que han hehco posible el estudio.

1) Grupo de Trabajo de la Orca Atlántica (GTOA)

Este equipo de biólogos marinos se dedica a contribuir en la conservación y gestión de la Orca Atlántica. Esta es una subpoblación singular de las orcas que habita en aguas  de la península y las protagonistas de las interacciones con los navíos.

2) Cruising Association (CA) 

Es una asociación dedicada a navegantes de pequeñas embarcaciones con base en Reino Unido. Aunque también centran sus esfuerzos en proteger a la especie protegida de cetáceos, tienen la misión de trabajar conjuntamente con el GTOA para proteger a los marineros y prevenir que las interacciones con esta subpoblación termine con daños humanos o materiales de grandes dimensiones.

Gracias al trabajo realizado por estas dos partes, el autor de este proyecto ha utilizado el método de raspado web (más conocido por el anglicismo *web scraping*) para formar una base de datos. Esta metodología de obtenicón de información se ha aplicado sobre la siguiente [web](https://www.theca.org.uk/orcas/reports). Aquí se puede encontrar una lista con los formularios rellenados por los patrones de las embarcaciones que vivieron una interacción con orcas en algun punto cercano a la península. 

Pese a que no todos los cuestionarios contestados coincdieran en formato y forma, en la siguiente lista desplegable se pueden encontrar las columnas de la BBDD así como una pequeña descripción del contenido de la misma:

<details>
<summary>Columnas de la BBDD:</summary>
<br>

* **date**: Fecha y hora aproximada de la interacción
* **lat_and_long**: Latitud y longitud donde se dio la interacción
* **GTOA_Protocol**: Se siguió el *protocolo* de GT Orca Atlántica: Arriar las velas, detener la embarcación, apagar el motor y mantener un perfil bajo así como *duración* de la interacción
* **Boat_Type**: Tipo de barco - Velero | Motor | Barco de pesca
* **Boat_Length**: Eslora del barco (m) - menos de 10m | 10-12.5 | 12.5-15m | Más de 15m
* **Towing_Inflatable**: Se encontraba el barco remolcando una lancha neumática?
* **Trailing_Fishing_Lure**: Se encontraba el barco arrastrando un señuelo de pesca?
* **Physical_Contact_With_Boat**: Hubo contacto físico de las orcas con la embarcación?
* **Number_of_Adult_Orcas**: Número de orcas adultas?
* **Number_of_Juvenile_Orcas**: Número de orcas juveniles?
* **Number_of_Uncertain_Age_Orcas**: Número de orcas de edad incierta?
* **Rudder**: Tipo de timón - Spade/pala | Semi skeg/Semicompensado | Full skeg/Completo | Twin rudder/Doble timón | Keel hung/Quilla corrida
* **Motoring_or_Sailing**: Motor o vela - Vela | Motor | Motor/Vela | Hove-to
* **Speed_Knots**: Velocidad (kts)
* **Sea_State**: Estado del mar - Calma | Moderado | Gruesa
* **Wind_Speed_Beaufort**: Velocidad del viento (Escala de Beaufort) - 0.2 | 3-4 | 5-6 | 7+
* **Daylight_or_Darkness**: Noche/Día - Amanecer | Día | Atardecer | Noche
* **Cloud_Cover**: Cobertura de nubes - 0-25% | 25-50% | 50-75% | 75-100%
* **Distance_Off_Land_NM**: Distancia a tierra (nm) - 0-2 | 2-5 | 5-10 | Más de 10
* **Depth_Meters**: Profundidad (m) - hasta 20m | 20-40m | 40-200m | 200m+
* **Depth_Gauge**: Medidor de profundidad - On | Off
* **Autopilot**: Piloto automático - On | Off
* **Hull_Topsides_Color**: Color del casco - Blanco | Oscuro
* **Antifoul_Color**: Color del antifoul - Negro | Azul | Rojo | Blanco | Verde | Coppercoat | Otro
* **Boat_Damaged**: Fue dañado el barco o necesita reparación alguna? Sí, menor | Sí, moderado | Sí, grandes reparaciones | No
* **Tow_Required**: ¿Fue remolcado? - Yes | No
* **Crew_Response**: Descripción abierta de la interacción así como acciones que se tomaron y su estas  disuadieron o no la interacción con las orcas.
* **Orcas_Behaviour**: Descripción del comportamiento de la/s orca/s
</details>


Se anima al lector a profundizar en el código dessarrollado para recolectar la información arriba mencionada. Se puede encontrar el código comentado y desrrollado en Python en el notebook [1.WebScraping.ipynb](https://github.com/Jacobomb/Orca-interactions-in-the-Iberian-Peninsula/blob/main/notebooks/1.WebScraping.ipynb). 

## Limpieza y completado de la BBDD

El siguiente paso del proyecto fue el de limpiar la base de datos de posibles errores que se hubieran dado en el raspado web. Dado que el raspado es una automatización de un proceso iterativo que va circulando por la web en cuestión y grabando la información de utilidad en un dataframe, en cualquier momento que un formulario tenga un orden distinto a los anteriores, se darán errores de dimensión y forma.

Esta parte se divide en dos notebooks distintos:

* [Data Cleaning](https://github.com/Jacobomb/Orca-interactions-in-the-Iberian-Peninsula/blob/main/notebooks/2.DataCleaning.ipynb): En este n



















## Recursos

[Link](https://www.theca.org.uk/orcas/interaction-report-form/es) del formulario a rellenar en caso de interacción con una orca.

## Disclaimer -> No se si poner disclaimer pero decir que ni soy biologo marino ni represento en ningun momento a CA ni a GTOA
