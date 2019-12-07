; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot day_moment
		(type SYMBOL)
		(allowed-values Morning Afternoon Night)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot frequency
		(type SYMBOL)
		(allowed-values Daily Occasionally Few_times)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot place
		(type SYMBOL)
		(allowed-values Public_transport Home Bed)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot foreign_authors
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gender
		(type SYMBOL)
		(allowed-values Male Female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot available_time
		(type SYMBOL)
		(allowed-values Little Medium Much)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot books
		(type INSTANCE)
;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot author
		(type INSTANCE)
;+		(allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot country
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Author
	(is-a USER)
	(role concrete)
	(single-slot gender
		(type SYMBOL)
		(allowed-values Male Female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot books
		(type INSTANCE)
;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot country
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Reader
	(is-a USER)
	(role concrete)
	(single-slot day_moment
		(type SYMBOL)
		(allowed-values Morning Afternoon Night)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot books
		(type INSTANCE)
;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot place
		(type SYMBOL)
		(allowed-values Public_transport Home Bed)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot available_time
		(type SYMBOL)
		(allowed-values Little Medium Much)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot foreign_authors
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot country
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot frequency
		(type SYMBOL)
		(allowed-values Daily Occasionally Few_times)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Book
	(is-a USER)
	(role concrete)
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot author
		(type INSTANCE)
;+		(allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot genre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))


; ============================================================================ ;
; ================================ INSTANCES ================================= ;
; ============================================================================ ;

; TODO generate instances TODO

; ============================================================================ ;
; ============================================================================ ;

;;;; FUNCIONS PER FER PREGUNTES A L'USUARI ;;;;

;; Funció per fer preguntes amb un conjunt de respostes admeses
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

;; Funció per fer preguntes amb respota SI/NO
(deffunction MAIN::pregunta-si-no (?question)
   (bind ?response (pregunta-opciones ?question si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

;; Funció per fer preguntes amb una resposta numèrica única
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funció per fer preguntes amb índex de respostes possibles
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

;; Funció per fer preguntes multiresposta amb índex de respostes possibles
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
;;;; FI FUNCIONS PER FER PREGUNTES A L'USUARI ;;;; }
