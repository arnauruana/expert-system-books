; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

; Author class
(defclass Author
	; TODO add ontology TODO
)

; Book class
(defclass Book
	; TODO add ontology TODO
)

; Reader class
(defclass Reader
	; TODO add ontology TODO
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

; User choices module
(defmodule CHOICES
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
	(println "=================== Book recomendation system ===================")
	(println "=================================================================")
	(println "")
)

; ----------------------------------- DATA ----------------------------------- ;

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

; ----------------------------------- MAIN ----------------------------------- ;

; Starts the execution
(defrule MAIN::initial
	(initial-fact)
	=>
	(welcome)
	(focus DATA)
)

; ----------------------------------- DATA ----------------------------------- ;

; Obtains the user's personal information
(defrule DATA::get-user
	(not (User))
	=>
	(assert (User))
	(println "Introduce the following personal information:")
	(focus INFO)
)

; Obtains the user's prefereneces
(defrule DATA::get-prefs
	(User)
	(not (Prefs))
	=>
	(assert (Prefs))
	(println "")
	(println "Introduce the following preference information:")
	(focus PREFS)
)

; Obtains the user's choices
(defrule DATA::get-choices
	(User)
	(Prefs)
	=>
	(assert (CHOICES))
	(println "")
	(println "Answer the following questions as honestly as you can:")
	(focus CHOICES)
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

; --------------------------------- CHOICES ---------------------------------- ;
