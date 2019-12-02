;;; Inicio de la solucion implementada

;;; Declaracion de clases propias

;;; Se crea una clase para las recomendaciones para poder hacer listas de recomendaciones y tratarlas mejor
(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(slot contenido
		(type INSTANCE)
		(create-accessor read-write))
	(slot puntuacion
		(type INTEGER)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
)

;;; Se crea una clase para cada uno de los dias de la recomendacion
(defclass Dia
	(is-a USER)
	(role concrete)
	(multislot recomendaciones
		(type INSTANCE)
		(create-accessor read-write))
	(slot tiempo-ocupado
		(type INTEGER)
		(create-accessor read-write))
	(slot tiempo-maximo
		(type INTEGER)
		(create-accessor read-write))
)

;;; Fin de declaracion de clases propias --------------

;;; Declaracion de modulos ----------------------------

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion-usuario
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule recopilacion-prefs
	(import MAIN ?ALL)
	(import recopilacion-usuario deftemplate ?ALL)
	(export ?ALL)
)
;;; Modulo de filtrado y procesado del contenido adequado al usuario
(defmodule procesado
	(import MAIN ?ALL)
	(import recopilacion-usuario deftemplate ?ALL)
	(import recopilacion-prefs deftemplate ?ALL)
	(export ?ALL)
)

;;; Modulo de generacion de soluciones
(defmodule generacion
	(import MAIN ?ALL)
	(export ?ALL)
)


;;; Modulo de presentacion de resultados
(defmodule presentacion
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Fin declaracion de modulos ------------------------

;;; Declaracion de messages ---------------------------

;; Imprime los datos de un contenido
(defmessage-handler MAIN::Contenido imprimir ()
	(format t "Titulo: %s %n" ?self:titulo)
	(format t "Formato: %s" (class ?self))
	(printout t crlf)
	(format t "Anyo: %d" ?self:anyo)
	(printout t crlf)
	(printout t "Pa�s: ")
	(progn$ (?curr-pais (send ?self get-hecha_en))
		(format t "%s " (send ?curr-pais get-nacionalidad))
	)
	(printout t crlf)
	(format t "Idioma: %s" (send ?self:en_idioma get-idioma))
	(printout t crlf)
	(format t "Duraci�n: %d" ?self:duracion)
	(printout t crlf)
	(format t "Edad m�nima recomendada: %d" ?self:clasificacion_edades)
	(printout t crlf)
	(format t "Puntuaci�n de los usuarios: %d" ?self:puntuacion)
	(printout t crlf)
)

(defmessage-handler MAIN::Recomendacion imprimir ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:contenido imprimir))
	(printout t crlf)
	(format t "Nivel de recomendaci�n: %d %n" ?self:puntuacion)
	(printout t "Justificaci�n: " crlf)
	(progn$ (?curr-just ?self:justificaciones)
		(printout t ?curr-just crlf)
	)
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)

(defmessage-handler MAIN::Dia imprimir ()
	(printout t "============================================" crlf)
	(printout t (instance-name ?self) crlf)
	(bind $?recs ?self:recomendaciones)
	(progn$ (?curr-rec $?recs)
		(printout t (send ?curr-rec imprimir))
	)
	(printout t "============================================" crlf)
)


;;; Fin declaracion de messages -----------------------


;;; Declaracion de templates --------------------------

;;; Template para los datos socio-demograficos del usuario
(deftemplate MAIN::Usuario
	(slot nombre (type STRING))
	(slot sexo (type SYMBOL) (default desconocido))
	(slot edad (type INTEGER) (default -1))
	(slot familia (type SYMBOL) (default desconocido))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias
	(multislot generos-favoritos (type INSTANCE))
	(multislot tematicas-favoritas (type INSTANCE))
	(multislot nacionalidades (type INSTANCE))
	(multislot idiomas (type INSTANCE))
)

;;; Template para una lista de recomendaciones sin orden
(deftemplate MAIN::lista-rec-desordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para una lista de recomendaciones con orden
(deftemplate MAIN::lista-rec-ordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para la lista de los dias de la recomendacion
(deftemplate MAIN::lista-dias
	(multislot dias (type INSTANCE))
)

;;; Fin declaracion de templates ----------------------



;;; Declaracion de funciones --------------------------

;;; Funcion que retorna el elemento con puntuacion maxima
(deffunction maximo-puntuacion ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-cont (send ?curr-rec get-contenido))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then
			(bind ?maximo ?curr-punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)

;;; Funcion para hacer una pregunta con respuesta cualquiera
(deffunction pregunta-general (?pregunta)
    (format t "%s " ?pregunta)
	(bind ?respuesta (read))
	(while (not (lexemep ?respuesta)) do
		(format t "%s " ?pregunta)
		(bind ?respuesta (read))
    )
	?respuesta
)

;;; Funcion para hacer una pregunta general con una serie de respuestas admitidas
(deffunction MAIN::pregunta-opciones (?question $?allowed-values)
   (format t "%s "?question)
   (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (format t "%s "?question)
	  (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

;;; Funcion para hacer una pregunta de tipo si/no
(deffunction MAIN::pregunta-si-no (?question)
   (bind ?response (pregunta-opciones ?question si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction MAIN::pregunta-indice (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-numerica "Escoge una opci�n:" 1 (length$ ?valores-posibles)))
	?respuesta
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los n�meros separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        )
    )
    ?lista
)

;;; Fin declaracion de funciones -----------------------



;;; Declaracion de reglas y hechos ---------------------

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10))
	=>
	(printout t "====================================================================" crlf)
  	(printout t "=         Sistema de recomendacion de contenidos TVornoTV          =" crlf)
	(printout t "====================================================================" crlf)
  	(printout t crlf)
	(printout t "�Bienvenido al sistema TVornoTV! A continuaci�n se le formular�n una serie de preguntas para poder recomendarle contenidos." crlf)
	(printout t crlf)
	(focus recopilacion-usuario)
)

;;; Modulo recopilacion

(defrule recopilacion-usuario::establecer-nombre "Establece el nombre de usuario, es la primera pregunta"
	(not (Usuario))
	=>
	(bind ?nombre (pregunta-general "�C�mo se llama? "))
	(assert (Usuario (nombre ?nombre)))
)


(defrule recopilacion-usuario::establecer-edad "Establece la edad del usuario"
	?u <- (Usuario (edad ?edad))
	(test (< ?edad 0))
	=>
	(bind ?e (pregunta-numerica "�Qu� edad tiene? " 1 110))
	(modify ?u (edad ?e))
)


(defrule recopilacion-usuario::usuario-pequenyo "Establece parametros que son seguros debido a que el usuario es adolescente o mas pequenyo"
	(declare (salience 10))
	?u <- (Usuario (edad ?edad) (familia desconocido))
	(test (and (> ?edad 0) (< ?edad 14)))
	=>
	(modify ?u (familia TRUE))
)

(defrule recopilacion-usuario::establecer-sexo "Establece el sexo del usuario"
	?u <- (Usuario (sexo desconocido))
	=>
	(bind ?s (pregunta-opciones "�Es hombre o mujer?" hombre mujer))
	(modify ?u (sexo ?s))
)

(defrule recopilacion-usuario::familia "Establece si se va a ver el contenido en familia"
	?u <- (Usuario (sexo ~desconocido) (familia desconocido))
	=>
	(bind ?r (pregunta-si-no "�Va a ver el contenido con menores?"))
	(if (eq ?r TRUE) then
		(bind ?e (pregunta-numerica "Por favor, introduzca la edad m�nima de los contenidos que quiere visualizar" 1 18))
		(modify ?u (familia TRUE) (edad ?e))
	else (modify ?u (familia FALSE))
	)
)

(defrule recopilacion-usuario::pasar-a-preferencias "Pasa a la recopilacion de preferencias"
	(declare (salience 10))
	?u <- (Usuario (edad ?e) (sexo ~desconocido) (familia TRUE|FALSE))
	(test (> ?e 0))
	=>
	(focus recopilacion-prefs)
)

(deffacts recopilacion-prefs::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(genero-favorito ask)
	(tematica-favorita ask)
	(formatos ask)
	(nacionalidad ask)
	(idioma ask)
	(vo ask)
	(aclamado-critica ask)
	(clasicos ask)
	(indie ask)
	(buena-audiencia ask)
	(preferencias )
)




(defrule recopilacion-prefs::establecer-formatos "Establece que tipos de contenidos formaran la solucion"
	?hecho <- (formatos ask)
	=>
	(bind ?formatos (create$ "Peliculas" "Series" "Documentales"))
	(bind ?respuesta (pregunta-multi "Indique qu� tipo(s) de contenido(s) quiere ver " ?formatos))
	(progn$ (?curr-for ?respuesta)
		(switch ?curr-for
			(case 1
				then (assert (formato Pelicula))
				(assert (decadas ask)))
			(case 2
				then (assert (formato Serie))
				(assert (series-espanyolas ask))
				(assert (subir-series ask)))
			(case 3
				then (assert (formato Documental))
				(assert (subir-documentales ask)))
		)
	)
	(retract ?hecho)
	(assert (formatos TRUE))
)



(defrule recopilacion-prefs::relacionado-series "Determina false hechos que no se van a preguntar porque no se ven series"
	(formatos TRUE)
	(not (formato Serie))
	(not (series-espanyolas))
	(not (subir-series))
	=>
	(assert (series-espanyolas FALSE))
	(assert (subir-series FALSE))
)


(defrule recopilacion-prefs::relacionado-documentales "Determina false hechos que no se van a preguntar porque no se ven documentales"
	(formatos TRUE)
	(not (formato Documental))
	(not (subir-documentales))
	=>
	(assert (subir-documentales FALSE))
)


(defrule recopilacion-prefs::no-generos "No se pregunta por generos porque solo quiere ver documentales"
	(formatos TRUE)
	?hecho1 <- (genero-favorito ask)
	(not (formato Pelicula|Serie))
	=>
	(retract ?hecho1)
	(assert (genero-favorito FALSE))
)


(defrule recopilacion-prefs::preguntar-genero-favorito "Pregunta al usuario si tiene algun genero favorito"
	?hecho <- (genero-favorito ask)
	(formato Pelicula|Serie)
	(vo ~ask)
	(idioma ~ask)
	(nacionalidad ~ask&~choose)
	=>
	(bind ?respuesta (pregunta-si-no "�Tiene preferencias en cuanto a los g�neros? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (genero-favorito choose))
		else
		(assert (genero-favorito FALSE))
	)
)


(defrule recopilacion-prefs::establecer-genero-favorito "Establece el genero favorito del usuario"
	?hecho <- (genero-favorito choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-generos (find-all-instances ((?inst Genero)) TRUE))
	(bind $?nom-generos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-generos)) do
		(bind ?curr-obj (nth$ ?i ?obj-generos))
		(bind ?curr-nom (send ?curr-obj get-genero))
		(bind $?nom-generos(insert$ $?nom-generos (+ (length$ $?nom-generos) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja sus g�neros favoritos: " $?nom-generos))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-generos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)

	(retract ?hecho)
	(assert (genero-favorito TRUE))
	(modify ?pref (generos-favoritos $?respuesta))
)


(defrule recopilacion-prefs::no-tematicas "No se pregunta por tematicas porque el usuario no quiere ver documentales"
	(formatos TRUE)
	?hecho1 <- (tematica-favorita ask)
	(not (formato Documental) )
	=>
	(retract ?hecho1)
	(assert (tematica-favorita FALSE))
)


(defrule recopilacion-prefs::preguntar-tematica-favorita "Pregunta al usuario si tiene alguna tematica favorita"
	?hecho <- (tematica-favorita ask)
	(formato Documental)
	(idioma ~ask)
	(nacionalidad ~ask&~choose)
	=>
	(bind ?respuesta (pregunta-si-no "�Tiene preferencias en cuanto a las tem�ticas de los documentales? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (tematica-favorita choose))
		else
		(assert (tematica-favorita FALSE))
	)
)


(defrule recopilacion-prefs::establecer-tematica-favorita "Establece la tematica favorita del usuario"
	?hecho <- (tematica-favorita choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-tem (find-all-instances ((?inst Tematica)) TRUE))
	(bind $?nom-tem (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-tem)) do
		(bind ?curr-obj (nth$ ?i ?obj-tem))
		(bind ?curr-nom (send ?curr-obj get-tematica))
		(bind $?nom-tem(insert$ $?nom-tem (+ (length$ $?nom-tem) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja sus tem�ticas favoritas: " $?nom-tem))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-tem))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)

	(retract ?hecho)
	(assert (tematica-favorita TRUE))
	(modify ?pref (tematicas-favoritas $?respuesta))
)


(defrule recopilacion-prefs::preguntar-nacionalidad "Pregunta si se tiene una nacionalidad para el contenido favorita"
	(formatos ~ask)
	(idioma ~ask)
	(vo ~ask)
	?hecho <- (nacionalidad ask)
	=>
	(bind ?respuesta (pregunta-si-no "�Tiene preferencias en cuanto a la nacionalidad de los contenidos?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (nacionalidad choose))
		else (assert (nacionalidad FALSE))
	)
)


(defrule recopilacion-prefs::establecer-nacionalidad "Establece las nacionalidades favoritas del usuario"
	?hecho <- (nacionalidad choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-nacion (find-all-instances ((?inst Nacionalidad)) TRUE))
	(bind $?nom-nacion (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-nacion)) do
		(bind ?curr-obj (nth$ ?i ?obj-nacion))
		(bind ?curr-nom (send ?curr-obj get-nacionalidad))
		(bind $?nom-nacion(insert$ $?nom-nacion (+ (length$ $?nom-nacion) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja las nacionalidades que prefiera: " $?nom-nacion))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-nacion))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)

	(retract ?hecho)
	(assert (nacionalidad TRUE))
	(modify ?pref (nacionalidades $?respuesta))
)


(defrule recopilacion-prefs::establecer-idiomas-principales "Establece los idiomas que el usuario entiende sin subtitulos"
	(formato ~ask)
	(vo FALSE)
	?pref <- (preferencias)
	?hecho <- (idioma ask)
	=>
	(bind $?obj-idioma (find-all-instances ((?inst Idioma)) TRUE))
	(bind $?nom-idioma (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-idioma)) do
		(bind ?curr-obj (nth$ ?i ?obj-idioma))
		(bind ?curr-nom (send ?curr-obj get-idioma))
		(bind $?nom-idioma(insert$ $?nom-idioma (+ (length$ $?nom-idioma) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "�Qu� idiomas entiende perfectamente sin necesidad de subt�tulos? : " $?nom-idioma))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-idioma))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)

	(retract ?hecho)
	(assert (idioma TRUE))
	(modify ?pref (idiomas $?respuesta))
)


(defrule recopilacion-prefs::establecer-subtitulos "Establece si el usuario est� dispuesto a ver contenidos con subtitulos"
	?hecho <- (vo ask)
	(formato ~ask)
	?h2 <- (idioma ask)
	=>
	(bind ?respuesta (pregunta-si-no "�Est� dispuesto a ver contenidos en versi�n original subtitulada? " ))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then
		(assert (vo TRUE))
		(retract ?h2)
		(assert (idioma TRUE))
		else
		(assert (vo FALSE))
	)
)


(defrule recopilacion-prefs::aclamado-critica "Establece si al usuario tiene un gusto como el de la cr�tica"
	?hecho <- (aclamado-critica ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Sigue festivales de cine como el de Cannes y premios como los Oscar?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (aclamado-critica TRUE))
		else (assert (aclamado-critica FALSE))
	)
)

(defrule recopilacion-prefs::clasicos "Establece si el usuario tiene predilecci�n por los cl�sicos"
	?hecho <- (clasicos ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Le gustan los contenidos cl�sicos?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (clasicos TRUE))
		else
			(assert (clasicos FALSE))
			(assert (mudo FALSE))
			(assert (blanconegro FALSE))
	)
)

(defrule recopilacion-prefs::mudo "Establece si el usuario quiere ver cine mudo"
	(clasicos TRUE)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	(not (mudo TRUE|FALSE))
	=>
	(bind ?respuesta (pregunta-si-no "�Dentro de los contenidos cl�sicos, le gusta el cine mudo?"))
	(if (eq ?respuesta TRUE)
		then (assert (mudo TRUE))
		else (assert (mudo FALSE))
	)
)

(defrule recopilacion-prefs::blanconegro "Establece si el usuario que quiere ver clasicos prefiere que sea en blanco y negro"
	(clasicos TRUE)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	(not (blanconegro TRUE|FALSE))
	=>
	(bind ?respuesta (pregunta-si-no "�Los contenidos cl�sicos los prefiere en blanco y negro?"))
	(if (eq ?respuesta TRUE)
		then (assert (blanconegro TRUE))
		else (assert (blanconegro FALSE))
	)
)


(defrule recopilacion-prefs::indie "Establece si al usuario le gustan las peliculas independientes"
	?hecho <- (indie ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-opciones "�Prefiere contenido independiente y de bajo presupuesto o contenido m�s comercial?" indep comer))
	(retract ?hecho)
	(if (eq ?respuesta indep)
		then (assert (indie TRUE))
		else (assert (indie FALSE))
	)
)

(defrule recopilacion-prefs::buena-audiencia "Establece si al usuario le gustan los mismos contenidos que a la mayor�a"
	?hecho <- (buena-audiencia ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Cu�ndo valora contenidos con sus amigos, familiares,..., suele haber muchas discrepancias?"))
	(retract ?hecho)
	(if (eq ?respuesta FALSE)
		then (assert (buena-audiencia TRUE))
		else (assert (buena-audiencia FALSE))
	)
)

(defrule recopilacion-prefs::series-espanyolas "Establece si al usuario le gustan las series espanyolas"
	?hecho <- (series-espanyolas ask)
	(formato Serie)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Conoce y son de su agrado personajes como el doctor Mateo, Luisma de A�da, el portero de Aqu� No Hay Qui�n Viva o El Duque?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (series-espanyolas TRUE))
		else (assert (series-espanyolas FALSE))
	)
)


(defrule recopilacion-prefs::prefiere-documentales "Establece si dar preferencia a documentales"
	?hecho <- (subir-documentales ask)
	(formato Documental)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Mira normalmente canales como National Geographic, Discovery Channel, La 2, 33, Historia o las charlas TED?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (subir-documentales TRUE))
		else (assert (subir-documentales FALSE))
	)
)


(defrule recopilacion-prefs::prefiere-series "Establece si dar preferencia a series"
	?hecho <- (subir-series ask)
	(formato Serie)
	(idioma ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "�Mira normalmente canales como Factor�a de Ficci�n, FOX, Showtime o HBO?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (subir-series TRUE))
		else (assert (subir-series FALSE))
	)
)

(defrule recopilacion-prefs::aux_familiar "Define el g�nero familiar como favorito si se ve contenido en familia"
	(Usuario (familia TRUE))
	(not (familia-procesado TRUE))
	?pref <- (preferencias (generos-favoritos $?gen))
	?hecho <- (genero-favorito TRUE|FALSE)
	=>
	(bind ?familia (find-instance ((?inst Genero)) (eq ?inst:genero "familiar")))
	(if (not (member$ ?familia $?gen)) then
		(bind $?gen (insert$ $?gen (+ (length$ $?gen) 1) ?familia))
		(modify ?pref (generos-favoritos $?gen))
		(retract ?hecho)
		(assert (genero-favorito TRUE))
	)
)

(defrule recopilacion-prefs::pasar_modulo_procesado "Pasa al modulo de procesado de datos"
	(declare (salience -1))
	?h1 <- (genero-favorito TRUE|FALSE)
	?h3 <- (tematica-favorita TRUE|FALSE)
	?h5 <- (formatos TRUE|FALSE)
	?h6 <- (nacionalidad TRUE|FALSE)
	?h7 <- (idioma TRUE|FALSE)
	(vo TRUE|FALSE)
	(series-espanyolas TRUE|FALSE)
	(subir-documentales TRUE|FALSE)
	=>
	(printout t "Procesando datos..." crlf)
	(focus procesado)
)

;;; Modulo procesado de contenido ---------------------------------------------------


(defrule procesado::anadir-peliculas "Se a�ade todas las peliculas, luego se filtran"
	?hecho <- (formato Pelicula)
	=>
	(bind $?lista (find-all-instances ((?inst Pelicula)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)
	(retract ?hecho)
)


(defrule procesado::anadir-series "Se a�ade todas las series, luego se filtran"
	?hecho <- (formato Serie)
	=>
	(bind $?lista (find-all-instances ((?inst Serie)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)
	(retract ?hecho)
)


(defrule procesado::anadir-docus "Se a�ade todas los documentales, luego se filtran"
	?hecho <- (formato Documental)
	=>
	(bind $?lista (find-all-instances ((?inst Documental)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)
	(retract ?hecho)
)


(defrule procesado::aux-genero "Crea hechos para poder procesar los generos favoritos"
	(preferencias (generos-favoritos $?gen))
	?hecho <- (genero-favorito ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)then
		(progn$ (?curr-gen $?gen)
			(assert (genero-favorito ?curr-gen))
		)
	)
)

(defrule procesado::aux-tematica "Crea hechos para poder procesar las tematicas favoritas"
	(preferencias (tematicas-favoritas $?tem))
	?hecho <- (tematica-favorita ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)then
		(progn$ (?curr-tem $?tem)
			(assert (tematica ?curr-tem))
		)
	)
)




(defrule procesado::valorar-edad "Se quitan las peliculas que no cumplan la recomendacion de edades"
	(Usuario (edad ?e))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	?cont <-(object (is-a Contenido) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (< ?e ?min-edad))
	=>
	(send ?rec delete)
)

(defrule procesado::valorar-ninyo-peliculas "Se mejora la puntuacion de los contenidos adecuados a ninyos"
	(Usuario (edad ?e))
	(test (< ?e 14))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (duracion ?duracion) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-ninyo ?cont))
	=>
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "animacion" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero animaci�n -> +150"))
			)
			(case "aventuras" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero aventuras -> +125"))
			)
			(case "fantasia" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero fantasia -> +125"))
			)
			(case "comedia" then
				(bind ?p (+ ?p 75))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero comedia -> +75"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-ninyo ?cont))
)

(defrule procesado::valorar-ninyo-serie "Se mejora la puntuacion de los contenidos adecuados a ninyos"
	(Usuario (edad ?e))
	(test (< ?e 14))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (duracion ?duracion) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-ninyo ?cont))
	=>
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "animacion" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero animaci�n -> +150"))
			)
			(case "aventuras" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero aventuras -> +125"))
			)
			(case "fantasia" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero fantasia -> +125"))
			)
			(case "comedia" then
				(bind ?p (+ ?p 75))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de g�nero comedia -> +75"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-ninyo ?cont))
)


(defrule procesado::valorar-adolescente-pelicula "Se mejora la puntuacion de los contenidos adecuados a adolescentes"
	(Usuario (edad ?e))
	(test (and (>= ?e 14) (< ?e 23)))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-adolescente ?cont))
	=>
	(if (eq ?moda TRUE) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y est� de moda -> +150"))
	)
	(if (> ?anyo 2005) then
		(bind ?p (+ ?p 50))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es reciente -> +50"))
	)
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "comedia" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es de g�nero comedia -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "trepidante" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es trepidante -> +150"))
			)
			(case "gracioso" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es gracioso -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-adolescente ?cont))
)

(defrule procesado::valorar-adolescente-serie "Se mejora la puntuacion de los contenidos adecuados a adolescentes"
	(Usuario (edad ?e))
	(test (and (>= ?e 14) (< ?e 23)))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-adolescente ?cont))
	=>
	(if (eq ?moda TRUE) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y est� de moda -> +150"))
	)
	(if (> ?anyo 2005) then
		(bind ?p (+ ?p 50))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es reciente -> +50"))
	)
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "comedia" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es de g�nero comedia -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "trepidante" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es trepidante -> +150"))
			)
			(case "gracioso" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es gracioso -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-adolescente ?cont))
)

(defrule procesado::valorar-mayor-serie "Se mejora la puntuacion de los contenidos adecuados a personas mayores"
	(Usuario (edad ?e))
	(test (>= ?e 63))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos) (trata_de $?argumentos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mayor ?cont))
	=>
	(bind ?p (+ ?p -75))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es una serie -> -75"))
	(if (< ?anyo 1970) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es antiguo -> +150"))
	)
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "historico" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de g�nero hist�rico -> +100"))
			)
			(case "western" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es un western -> +100"))
			)
			(case "musical" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de g�nero musical -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "sentimental" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es sentimental -> +100"))
			)
			(case "senta_bien" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y senta bien -> +100"))
			)
		)
	)
	(progn$ (?curr-arg $?argumentos)
		(bind ?nombre (send ?curr-arg get-argumento))
		(switch ?nombre
			(case "guerra_civil" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la guerra civil -> +125"))
			)
			(case "anyos60" then
				(bind ?p (+ ?p 50))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la d�cada de los 60 -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mayor ?cont))
)

(defrule procesado::valorar-mayor-pelicula "Se mejora la puntuacion de los contenidos adecuados a personas mayores"
	(Usuario (edad ?e))
	(test (>= ?e 63))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos) (trata_de $?argumentos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mayor ?cont))
	=>
	(if (< ?anyo 1970) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es antiguo -> +150"))
	)
	(progn$ (?curr-gen $?generos)
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "western" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es un western -> +100"))
			)
			(case "musical" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de g�nero musical -> +100"))
			)
			(case "historico" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de g�nero hist�rico -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "sentimental" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es sentimental -> +150"))
			)
			(case "senta_bien" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y senta bien -> +150"))
			)
		)
	)
	(progn$ (?curr-arg $?argumentos)
		(bind ?nombre (send ?curr-arg get-argumento))
		(switch ?nombre
			(case "guerra" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la guerra -> +125"))
			)
			(case "anyos60" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la d�cada de los 60 -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mayor ?cont))
)


(defrule procesado::valorar-tematica-favorita "Se mejora la puntuacion de ldocumentales de tematica favorita"
	?hecho <- (tematica ?tem)
	?cont <-(object (is-a Documental) (docu_tematica ?tematica))
	(test (eq (instance-name ?tem) ?tematica))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-tematica-favorita ?cont ?tem))
	=>
	(bind ?p (+ ?p 150))
	(bind ?text (str-cat "Pertenece a la tem�tica favorita " (send ?tem get-tematica) " -> +150"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-tematica-favorita ?cont ?tem))
)


(defrule procesado::valorar-genero-favorito-peliculas "Se mejora la puntuacion de las peliculas de genero favorito"
	?hecho <- (genero-favorito ?gen)
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos))
	(test (member$ ?gen $?generos))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-genero-favorito ?cont ?gen))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Pertenece al g�nero favorito " (send ?gen get-genero) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-genero-favorito ?cont ?gen))
)


(defrule procesado::valorar-genero-favorito-series "Se mejora la puntuacion de las series de genero favorito"
	?hecho <- (genero-favorito ?gen)
	?cont <-(object (is-a Serie) (serie_genero $?generos))
	(test (member$ ?gen $?generos))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-genero-favorito ?cont ?gen))
	=>
	(bind ?p (+ ?p 50))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Pertenece al g�nero favorito " (send ?gen get-genero) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-genero-favorito ?cont ?gen))
)


(defrule procesado::aux-nacionalidad "Crea hechos con las nacionalidades favoritas para porder tratarlas"
	(preferencias (nacionalidades $?nac))
	?hecho <- (nacionalidad ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE) then
		(progn$ (?curr-nac $?nac)
			(assert (nacionalidad ?curr-nac))
		)
	)
)


(defrule procesado::valorar-nacionalidad-favorita "Se mejora la puntuacion de los contenidos de las nacionalidades favoritas del usuario"
	(nacionalidad ?nac)
	?cont <- (object (is-a Contenido) (hecha_en $?nacionalidades))
	(test (member$ ?nac $?nacionalidades))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-nacionalidad-favorita ?cont ?nac))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es de la nacionalidad favorita " (send ?nac get-nacionalidad) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-nacionalidad-favorita ?cont ?nac))
)


(defrule procesado::valorar-subir-series "Se mejora la puntuacion de las series en general"
	(subir-series TRUE)
	?cont <- (object (is-a Serie))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-subir-series ?cont))
	=>
	(bind ?text (str-cat "Es una serie y el usuario las ve normalmente -> + 125"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(bind ?p (+ ?p 125))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-subir-series ?cont))
)

(defrule procesado::valorar-subir-documentales "Mejora la puntuacion de los documentales en general"
	(subir-documentales TRUE)
	?cont <- (object (is-a Documental))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-subir-documental ?cont))
	=>
	(bind ?text (str-cat "Es un documental y el usuario los ve normalmente -> + 125"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(bind ?p (+ ?p 125))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-subir-documental ?cont))
)


(defrule procesado::descartar-por-idioma "Se descartan las peliculas que el usuario no va a entender dependiendo de si tienen subtitulos o no"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(preferencias (idiomas $?idiomas))
	(vo FALSE)
	?cont <- (object (is-a Contenido) (en_idioma ?idioma))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (not (member$ ?idioma $?idiomas)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-clasicos "Se descartan contenidos clasicos si no le gustan al usuario"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(clasicos FALSE)
	?cont <- (object (is-a Contenido) (anyo ?anyo))
	(test (<= ?anyo 1965))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-mudo "Se descartan los contenidos mudos"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(mudo FALSE)
	?cont <- (object (is-a Contenido) (es_mudo TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-blanconegro "Se descartan los contenidos en blanco y negro"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(blanconegro FALSE)
	(clasicos FALSE)
	?cont <- (object (is-a Contenido) (blanco_negro TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::valorar-series-espanyolas "Mejora la puntuacion de las series espanyolas"
	(series-espanyolas ?valorar)
	?cont <- (object (is-a Serie) (hecha_en ?nac))
	(test (eq (send ?nac get-nacionalidad) "Espanya"))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-series-espanyolas ?cont))
	=>
	(if (eq ?valorar TRUE)
		then
			(bind ?p (+ ?p 100))
			(bind $?just (insert$ $?just (+ (length$ $?just) 1) "Es una serie espanyola -> +100"))
	)
	(if (eq ?valorar FALSE)
		then
			(bind ?p (+ ?p -100))
			(bind $?just (insert$ $?just (+ (length$ $?just) 1) "Es una serie espanyola -> -100"))
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-series-espanyolas ?cont))
)


(defrule procesado::valorar-aclamado-critica "Sube la puntuaci�n de los contenidos aclamados por la critica"
	(aclamado-critica TRUE)
	?cont <- (object (is-a Contenido) (aclamada_por_critica TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-aclamado-critica ?cont))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido aclamado por la cr�tica especializada -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-aclamado-critica ?cont))
)

(defrule procesado::valorar-clasicos "Sube la puntuaci�n de los contenidos cl�sicos"
	(clasicos TRUE)
	?cont <- (object (is-a Contenido) (anyo ?a))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (<= ?a 1965))
	(not (valorado-clasico ?cont))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido cl�sico -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-clasico ?cont))
)

(defrule procesado::valorar-indie "Modifica la puntuaci�n de los contenidos seg�n sean de bajo presupuesto o no"
	(indie ?indie)
	?cont <- (object (is-a Contenido) (bajo_presupuesto TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-indie ?cont))
	=>
	(if (eq ?indie TRUE) then
		(bind ?p (+ ?p 75))
		(bind ?text (str-cat "Es un contenido de bajo presupuesto o independiente -> +75"))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	else
		(bind ?p (+ ?p -75))
		(bind ?text (str-cat "Es un contenido de bajo presupuesto o independiente -> -75"))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-indie ?cont))
)

(defrule procesado::valorar-blanconegro "Mejora la puntuaci�n de los contenidos en blanco y negro"
	(blanconegro TRUE)
	?cont <- (object (is-a Contenido) (blanco_negro TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-blanconegro ?cont))
	=>
	(bind ?p (+ ?p 150))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido en blanco y negro -> +150"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-blanconegro ?cont))
)

(defrule procesado::valorar-mudo "Mejora la puntuaci�n de los contenidos mudos"
	(mudo TRUE)
	?cont <- (object (is-a Contenido) (es_mudo TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mudo ?cont))
	=>
	(bind ?p (+ ?p 75))
	(bind ?text (str-cat "Es un contenido mudo -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mudo ?cont))
)

(defrule procesado::valorar-buena-audiencia "Modifica la puntuaci�n de los contenidos con buena audiencia"
	(buena-audiencia TRUE)
	?cont <- (object (is-a Contenido) (buena_audiencia TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-buena-audiencia ?cont))
	=>
	(bind ?p (+ ?p 75))
	(bind ?text (str-cat "Es un contenido que ha tenido buena audiencia -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-buena-audiencia ?cont))
)

(defrule procesado::pasar-a-generacion "Pasa al modulo de generacion de respuestas"
	(declare(salience -10))
	=>
	(printout t "Generando respuesta..." crlf)
	(focus generacion)
)


;;; M�dulo de generacion de respuestas -------------------------------------------------
(defrule generacion::crea-lista-recomendaciones "Se crea una lista de recomendaciones para ordenarlas"
	(not (lista-rec-desordenada))
	=>
	(assert (lista-rec-desordenada))
)

(defrule generacion::anyadir-recomendacion "Anyade una recomendacion a la lista de recomendaciones"
	(declare (salience 10))
	?rec <- (object (is-a Recomendacion))
	?hecho <- (lista-rec-desordenada (recomendaciones $?lista))
	(test (not (member$ ?rec $?lista)))
	=>
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) ?rec))
	(modify ?hecho (recomendaciones $?lista))
)

(defrule generacion::crea-lista-ordenada "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada))
	(lista-rec-desordenada (recomendaciones $?lista))
	=>
	;;; Hacemos una ordenacion buscando maximo a cada paso (lento per simple de implementar)
	(bind $?resultado (create$ ))
	(while (and (not (eq (length$ $?lista) 0)) (< (length$ $?resultado) 21))  do
		(bind ?curr-rec (maximo-puntuacion $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada (recomendaciones $?resultado)))
)

(defrule generacion::asigna-contenido-a-dias "Se asigna los contenidos recomendados a dias"
	(lista-rec-ordenada (recomendaciones $?recs))
	(not (lista-dias))
	=>
	(bind $?lista (create$ ))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia1 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia2 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia3 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia4 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia5 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia6 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia7 of Dia (tiempo-maximo 180))))
	(bind ?i 1)
	(bind ?rec-ant FALSE)
	(while (and (> (length$ $?recs) 0) (< ?i 8)) do
		(bind ?dia (nth$ ?i $?lista))
		(bind $?recs-dia (create$ ))
		(bind ?t-max (send ?dia get-tiempo-maximo))
		(bind ?t-ocu 0)
		(bind ?try 1)
		(bind ?asignados 0)
		(while (and (and (and(< ?t-ocu ?t-max) (< ?try 4)) (and (<= (length$ $?recs-dia) 2) (> (length$ $?recs) 0))) (< ?asignados 3)) do
			(bind ?rec (nth$ (random 1 (length$ $?recs)) $?recs))
			(bind ?cont (send ?rec get-contenido))
			(bind ?t (send ?cont get-duracion))
			(if (< (+ ?t-ocu ?t) ?t-max)
				then
					(bind ?t-ocu (+ ?t-ocu ?t))
					(bind ?try 1)
					(bind ?asignados (+ ?asignados 1))
					(bind ?recs-dia (insert$ $?recs-dia (+ (length$ $?recs-dia) 1) ?rec))
					(bind $?recs (delete-member$ $?recs ?rec))
				else
					(bind ?try (+ ?try 1))
			)
		)
		(send ?dia put-recomendaciones $?recs-dia)
		(bind ?i (+ ?i 1))
	)
	(assert (lista-dias (dias $?lista)))
)


(defrule generacion::pasar-a-presentacion "Se pasa al modulo de presentacion"
	(lista-dias)
	=>
	(focus presentacion)
)




;;; Modulo de presentacion de resultados ----------------------------------------------------
(defrule presentacion::mostrar-respuesta "Muestra el contenido escogido"
	(lista-dias (dias $?dias))
	(Usuario (nombre ?nombre))
	(not (final))
	=>
	(printout t crlf)
	(format t "%s, esta es nuestra recomendaci�n para usted. �Esperamos que la disfrute!" ?nombre)
	(printout t crlf)
	(progn$ (?curr-dia $?dias)
		(printout t (send ?curr-dia imprimir))
	)
	(assert (final))
)


; ;;; Fin declaracion de reglas ------------------------------
