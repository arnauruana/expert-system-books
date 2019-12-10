; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
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
	(single-slot frequency
		(type SYMBOL)
		(allowed-values rarely occasionaly normaly frequently)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rating
		(type FLOAT)
;+		(cardinality 0 1)
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
	(single-slot genre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values low medium high)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot available_time
		(type SYMBOL)
		(allowed-values little medium much)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Author
	(is-a USER)
	(role concrete)
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values low medium high)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rating
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot books
		(type INSTANCE)
;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Reader
	(is-a USER)
	(role concrete)
	(multislot books
		(type INSTANCE)
;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot available_time
		(type SYMBOL)
		(allowed-values little medium much)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frequency
		(type SYMBOL)
		(allowed-values rarely occasionaly normaly frequently)
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
		(allowed-values low medium high)
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
	(single-slot genre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot author
		(type INSTANCE)
;+		(allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

; ============================================================================ ;
; ================================ INSTANCES ================================= ;
; ============================================================================ ;

; Instances declaration
(definstances instances
	([ontology_Class10001] of  Book

		(author [ontology_Class10002])
		(genre "Infantil")
		(pages 23)
		(popularity high)
		(title "Caperucita roja")
		(year 1980))

	([ontology_Class10002] of  Author

		(books [ontology_Class10001])
		(gender male)
		(name "Paco")
		(popularity medium)
		(rating 8.0))

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

; User information module
(defmodule INFO
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(export ?ALL)
)

; User preferences module
(defmodule PREFS
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(export ?ALL)
)

; User recomendation module
(defmodule RECOM
	(import MAIN ?ALL)
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
)

; Actual user preferences template
(deftemplate MAIN::Prefs
	(slot time
		(type SYMBOL)
		(default NONE)
	)
	(slot freq
		(type SYMBOL)
		(default NONE)
	)
)

; Actual user recomendation template
(deftemplate MAIN::Recom
	(multislot books
		(type INSTANCE)
	)
)

; ============================================================================ ;
; ================================ FUNCTIONS ================================= ;
; ============================================================================ ;

; ----------------------------------- MAIN ----------------------------------- ;

; Prints a message
(deffunction MAIN::print(?msg)
	(printout t ?msg)
)

; Prints a message followed by a line break
(deffunction MAIN::println(?msg)
	(print ?msg)
	(printout t crlf)
)

; Prints the welcome header
(deffunction MAIN::welcome()
	(println "")
	(println "=================================================================")
	(println "=                   BOOK RECOMENDATION SYSTEM                   =")
	(println "=================================================================")
	(println "")
)

; General question with a set of allowed answers
(deffunction MAIN::question-options(?question $?allowed-values)
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

; General question with yes/no answers.
(deffunction MAIN::question-yes-no(?question)
	(bind ?answer (question-options ?question yes no))
	(if (or (eq ?answer yes) (eq ?answer y))
		then TRUE
		else FALSE
	)
)

; Funcion para hacer una pregunta con respuesta cualquiera
(deffunction MAIN::question-general(?question)
	(format t "%s" ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s" ?question)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::question-range(?question ?rangeI ?rangeF)
	(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
	(bind ?answer (read))
	(while (not (and (>= ?answer ?rangeI) (<= ?answer ?rangeF))) do
		(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction MAIN::question-index(?question $?possible-values)
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
(deffunction MAIN::question-multi(?question $?possible-values)
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

; ----------------------------------- MAIN ----------------------------------- ;

; Starts the execution printing a welcome messsage
(defrule MAIN::initial
	?fact <- (initial-fact)
	=>
	(welcome)
	(retract ?fact)
)

; Obtains user's data changing from MAIN to DATA
(defrule MAIN::get-data
	(not (initial-fact))
	(not (User))
	(not (Prefs))
	=>
	(focus DATA)
)

; Recommends a book to the user changing from MAIN to RECOM
(defrule MAIN::recommend
	(User)
	(Prefs)
	(not (Recom))
	=>
	(focus RECOM)
)

; ----------------------------------- DATA ----------------------------------- ;

; Obtains the user's personal information changing from DATA to INFO
(defrule DATA::get-user
	(not (User))
	=>
	(assert (User))
	(println "Introduce the following personal information:")
	(focus INFO)
)

; Obtains the user's prefereneces changing from DATA to PREFS
(defrule DATA::get-prefs
	(User)
	(not (Prefs))
	=>
	(assert (Prefs))
	(println "")
	(println "Introduce the following preference information:")
	(focus PREFS)
)

; ----------------------------------- INFO ----------------------------------- ;

; Obtains the user's name
(defrule INFO::get-name
	?u <- (User (name "NONE"))
	=>
	(bind ?n (question-general "  - Name: "))
	(modify ?u (name ?n))
)

; Obtains the user's age
(defrule INFO::get-age
	?u <- (User (age -1))
	=>
	(bind ?a (question-range "  - Age" 0 150))
	(modify ?u (age ?a))
)

; Obtains the user's gender
(defrule INFO::get-gender
	?u <- (User (gender NONE))
	=>
	(bind ?g (question-options "  - Gender " male female))
	(modify ?u (gender ?g))
)

; ---------------------------------- PREFS ----------------------------------- ;

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

; ---------------------------------- RECOM ----------------------------------- ;

; Creates the recomendation template for the user
(defrule RECOM::create
	(not (Recom))
	=>
	(assert (Recom))
	(println "")
	(println "Answer the following questions as honestly as you can:")
)
