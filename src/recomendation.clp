; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

; TODO add ontology TODO

; ============================================================================ ;
; ================================ INSTANCES ================================= ;
; ============================================================================ ;

; TODO add instances TODO

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
(defmodule USER
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

; User genre recomendation module
(defmodule GENRE
	(import MAIN ?ALL)
	(import RECOM ?ALL)
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
	(slot freq
		(type SYMBOL)
		(default NONE)
	)
)

; Actual user recomendation template
(deftemplate MAIN::Recom
	(slot genre
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
	(println "=                   BOOK RECOMENDATION SYSTEM                   =")
	(println "=================================================================")
	(println "")
)

; ---------------------------------------------------------------------------- ;

; General question with a set of allowed answers
(deffunction MAIN::question-options(?question $?allowed-values)
	(format t "%s " ?question)
	(progn$ (?curr-value $?allowed-values)
    (println "")
		(format t "      [%s]" ?curr-value)
 	)
	(printout t ": ")
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer))
	)
	(while (not (member ?answer ?allowed-values)) do
		(format t "%s " ?question)
	 	(progn$ (?curr-value $?allowed-values)
      (println "")
	 		(format t "      [%s]" ?curr-value)
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
	(format t "%s " ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s " ?question)
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

; Obtains the user's personal information changing from DATA to USER
(defrule DATA::get-user
	(not (User))
	=>
	(assert (User))
	(println "Introduce the following personal information:")
	(focus USER)
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

; ----------------------------------- USER ----------------------------------- ;

; Obtains the user's name
(defrule USER::get-name
	?u <- (User (name "NONE"))
	=>
	(bind ?n (question-general "  - Name:"))
	(modify ?u (name ?n))
)

; Obtains the user's age
(defrule USER::get-age
	?u <- (User (age -1))
	=>
	(bind ?a (question-range "  - Age" 0 150))
	(modify ?u (age ?a))
)

; Obtains the user's gender
(defrule USER::get-gender
	?u <- (User (gender NONE))
	=>
	(bind ?g (question-options "  - Gender" male female))
	(modify ?u (gender ?g))
)

; ---------------------------------- PREFS ----------------------------------- ;

; Obtains the user's read frequency
(defrule PREFS::get-freq
	?p <- (Prefs (freq NONE))
	=>
	(bind ?f (question-options "  - Reading frequency" rarely occasionally normally frequently))
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
	(focus GENRE)
)

; ---------------------------------- GENRE ----------------------------------- ;

(defrule GENRE::children
	?r <- (Recom (genre NONE))
	?u <- (User (age ?a&:(< ?a 12)))
	=>
	(bind ?g (question-options "  - Which one do you prefer?" young classics none))
	(if (neq ?g none)
		then
			(modify ?r (genre ?g))
		else
			(bind ?ans (question-yes-no "  - Do you prefer fantasy?"))
			(if (eq ?ans TRUE)
				then
					(modify ?r (genre fantasy))
				else
					(modify ?u (age 12))
			)
	)
)

(defrule GENRE::teenager
	?r <- (Recom (genre NONE))
	?u <- (User (age ?a&:(and (>= ?a 12) (<= ?a 18))))
	=>
	(bind ?g (question-options "  - Which one do you prefer?" young classics fantasy thrilers adventure none))
	(if (neq ?g none)
		then
			(modify ?r (genre ?g))
		else
			(bind ?ans (question-yes-no "  - Do you prefer horror?"))
			(if (eq ?ans TRUE)
				then
					(modify ?r (genre horror))
				else
					(modify ?u (age 20))
			)
	)
)
