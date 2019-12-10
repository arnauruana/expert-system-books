; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

; WARNING/TODO: eliminar classe??? (creada per defecte)
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot day_moment
		(type SYMBOL)
		(allowed-values Morning Afternoon Night)
		;	 (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot title
		(type STRING)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot frequency
		(type SYMBOL)
		(allowed-values Daily Occasionally Few_times)
		;	(cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot place
		(type SYMBOL)
		(allowed-values Public_transport Home Bed)
		;	(cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot foreign_authors
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		;	(cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot genre
		(type STRING)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot gender
		(type SYMBOL)
		(allowed-values Male Female)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot available_time
		(type SYMBOL)
		(allowed-values Little Medium Much)
		;	(cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot year
		(type INTEGER)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot pages
		(type INTEGER)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(multislot books
		(type INSTANCE)
		;	(allowed-classes Book)
		(create-accessor read-write)
	)
	(single-slot age
		(type INTEGER)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot name_
		(type STRING)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
	(multislot author
		(type INSTANCE)
		; (allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)
	)
	(single-slot country
		(type STRING)
		;	(cardinality 1 1)
		(create-accessor read-write)
	)
)

; Author class
(defclass Author
	(is-a USER)
	(role concrete)
	(single-slot gender
		(type SYMBOL)
		(allowed-values Male Female)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(multislot books
		(type INSTANCE)
		; (allowed-classes Book)
		(create-accessor read-write)
	)
	(single-slot name_
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot country
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot age
		(type INTEGER)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
)

; Book class
(defclass Book
	(is-a USER)
	(role concrete)
	(single-slot popularity
		(type SYMBOL)
		(allowed-values Low Medium High)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot title
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot year
		(type INTEGER)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(multislot author
		(type INSTANCE)
		; (allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)
	)
	(single-slot genre
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot pages
		(type INTEGER)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
)

; Reader class
(defclass Reader
	(is-a USER)
	(role concrete)
	(single-slot day_moment
		(type SYMBOL)
		(allowed-values Morning Afternoon Night)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(multislot books
		(type INSTANCE)
		; (allowed-classes Book)
		(create-accessor read-write)
	)
	(single-slot place
		(type SYMBOL)
		(allowed-values Public_transport Home Bed)
		; (cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot available_time
		(type SYMBOL)
		(allowed-values Little Medium Much)
		; (cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot foreign_authors
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		; (cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot name_
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot country
		(type STRING)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
	(single-slot frequency
		(type SYMBOL)
		(allowed-values Daily Occasionally Few_times)
		; (cardinality 0 1)
		(create-accessor read-write)
	)
	(single-slot age
		(type INTEGER)
		; (cardinality 1 1)
		(create-accessor read-write)
	)
)

; ============================================================================ ;
; ================================ INSTANCES ================================= ;
; ============================================================================ ;

; Author instances
(definstances authors
	; TODO add instances TODO
)

; Book instances
(definstances books
	; TODO add instances TODO
)

; Reader instances
(definstances readers
	; TODO add instances TODO
)

; ============================================================================ ;
; ================================= MODULES ================================== ;
; ============================================================================ ;

; Main utility module
(defmodule MAIN
	(export ?ALL)
)

; User data module
(defmodule DATA
	(import MAIN ?ALL)
	(export ?ALL)
)

; User preferences module
(defmodule PREFS
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(export ?ALL)
)

; ============================================================================ ;
; ================================= MESSAGES ================================= ;
; ============================================================================ ;

; ¿TODO?

; ============================================================================ ;
; ================================ TEMPLATES ================================= ;
; ============================================================================ ;

; Actual user data template
(deftemplate MAIN::User
	(slot name
		(type STRING)
		(default "NONE")
	)
	(slot age
		(type INTEGER)
		(default -1)
	)
	(slot gender
		(type SYMBOL)
		(default NONE)
	)
	(slot country
		(type STRING)
		(default "NONE")
	)
)

; Actual user preferences template
(deftemplate MAIN::Prefs
	(slot book
		(type STRING)
		(default "NONE")
	)
	(slot genre
		(type SYMBOL)
		(default NONE)
	)
	(slot time
		(type SYMBOL)
		(default NONE)
	)
	(slot freq
		(type SYMBOL)
		(default NONE)
	)
)

; ============================================================================ ;
; ================================ FUNCTIONS ================================= ;
; ============================================================================ ;

; ------------------------------ MAIN functions ------------------------------ ;

(deffunction MAIN::print(?msg)
	(printout t ?msg)
)

(deffunction MAIN::println(?msg)
	(print ?msg)
	(printout t crlf)
)

(deffunction MAIN::welcome()
	(println "")
	(println "=================================================================")
	(println "=================== Book recomendation system ===================")
	(println "=================================================================")
	(println "")
)

; ------------------------------ DATA functions ------------------------------ ;

; Funcion para hacer una pregunta con respuesta cualquiera
(deffunction DATA::question-general(?question)
	(format t "%s" ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s" ?question)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction DATA::question-range(?question ?rangeI ?rangeF)
	(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
	(bind ?answer (read))
	(while (not (and (>= ?answer ?rangeI) (<= ?answer ?rangeF))) do
		(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer una pregunta general con una serie de respuestas admitidas
(deffunction DATA::question-options(?question $?allowed-values)
	(format t "%s" ?question)
	(progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
 	)
	(printout t ": ")
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer))
	)
	(while (not (member ?answer ?allowed-values)) do
		(format t "%s" ?question)
	 	(progn$ (?curr-value $?allowed-values)
	 		(format t "[%s]" ?curr-value)
	 	)
	 	(printout t ": ")
		(bind ?answer (read))
		(if (lexemep ?answer)
			then (bind ?answer (lowcase ?answer))
		)
	)
	?answer
)

; ---------------------------------------------------------------------------- ;

; Funcion para hacer una pregunta de tipo si/no
(deffunction question-yes-no(?question)
	(bind ?answer (question-options ?question yes no))
	(if (or (eq ?answer yes) (eq ?answer y))
		then TRUE
		else FALSE
	)
)

; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction question-index(?question $?possible-values)
	(bind ?line (format nil "%s" ?question))
	(printout t ?line crlf)
	(progn$ (?var ?possible-values)
		(bind ?line (format nil "  %d. %s" ?var-index ?var))
		(printout t ?line crlf)
	)
	(bind ?answer (question-range "Choose and option:" 1 (length$ ?possible-values)))
	?answer
)

; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction question-multi(?question $?possible-values)
	(bind ?line (format nil "%s" ?question))
	(printout t ?line crlf)
	(progn$ (?var ?possible-values)
		(bind ?line (format nil "  %d. %s" ?var-index ?var))
		(printout t ?line crlf)
	)
	(format t "%s" "Put the numbers separated by spaces: ")
	(bind ?answer (readline))
	(bind ?numbers (str-explode ?answer))
	(bind $?list (create$))
	(progn$ (?var ?numbers)
		(if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?possible-values))))
			then
				(if (not (member$ ?var ?list))
					then (bind ?list (insert$ ?list (+ (length$ ?list) 1) ?var))
				)
		)
	)
)

; ============================================================================ ;
; ============================== RULES & FACTS =============================== ;
; ============================================================================ ;

; -------------------------------- MAIN rules -------------------------------- ;

; Starts the execution
(defrule MAIN::initial
	(initial-fact)
	=>
	(welcome)
	(focus DATA)
)

; -------------------------------- DATA rules -------------------------------- ;

; Obtains the user's personal data
(defrule DATA::get-user
	(not (User))
	=>
	(assert (User))
	(println "Introduce the following personal information:")
)

; Obtains the user's name
(defrule DATA::get-name
	?u <- (User (name "NONE"))
	=>
	(bind ?n (question-general "  - Name: "))
	(modify ?u (name ?n))
)

; Obtains the user's age
(defrule DATA::get-age
	?u <- (User (age -1))
	=>
	(bind ?a (question-range "  - Age" 0 150))
	(modify ?u (age ?a))
)

; Obtains the user's gender
(defrule DATA::get-gender
	?u <- (User (gender NONE))
	=>
	(bind ?g (question-options "  - Gender " male female))
	(modify ?u (gender ?g))
)

; Obtains the user's country
(defrule DATA::get-country
	?u <- (User (country "NONE"))
	=>
	(bind ?c (question-general "  - Country: "))
	(modify ?u (country ?c))
)

; Changes from DATA module to PREFS module
(defrule DATA::get-user-prefs
	(User (name ~"NONE") (age ~-1) (gender ~NONE) (country ~"NONE"))
	=>
	(focus PREFS)
)

; ------------------------------- PREFS rules -------------------------------- ;

; Obtains the user's preferenece data
(defrule PREFS::get-prefs
	(not (Prefs))
	=>
	(assert (Prefs))
	(println "")
	(println "Introduce the following preference information:")
)

; Obtains the user's book preference
(defrule PREFS::get-book
	?p <- (Prefs (book "NONE"))
	=>
	(bind ?b (question-general "  - Book: "))
	(modify ?p (book ?b))
)

; Obtains the user's genre preference
(defrule PREFS::get-genre
	?p <- (Prefs (genre NONE))
	=>
	(bind ?g (question-options "  - Genre " history romance western))
	(modify ?p (genre ?g))
)

; Obtains the user's available time
(defrule PREFS::get-time
	?p <- (Prefs (time NONE))
	=>
	(bind ?t (question-options "  - Available time " little medium much))
	(modify ?p (time ?t))
)

; Obtains the user's read frequency
(defrule PREFS::get-freq
	?p <- (Prefs (freq NONE))
	=>
	(bind ?f (question-options "  - Reading frequency " rarely occasionally normally frequently))
	(modify ?p (freq ?f))
)
