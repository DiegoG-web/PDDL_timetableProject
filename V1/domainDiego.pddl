;Header and description   ctrl + ù per commentare

(define (domain domainDiego)

;remove requirements that are not needed
(:requirements :typing :negative-preconditions :fluents) ;necessary to remove warnings

(:types
    fasciaOraria
    corso
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (occupata ?f - fasciaOraria)
    ;(associazione ?c - corso ?f - fasciaOraria)  
    (assegnato ?c - corso)
)


(:functions ;todo: define numeric functions here
    (durataCorso ?c - corso)
    ;(costoAzione)
    (oraCorrente ?f)
    (next ?f1 ?f2)
)

;define actions here
(:action assegna1ora
    :parameters (?c - corso ?f - fasciaOraria)
    :precondition (and 
        (not (occupata ?f))
        ;(not (associazione ?c ?f)
        ;(not (assegnato ?c))
        (> (durataCorso ?c) 0)
    )
    :effect (and
        (occupata ?f)
        ;(assegnato ?c)
        (decrease (durataCorso ?c) 1)
        ;(increase (costoAzione) 2)
    )
)
; (:action assegna2ore
;     :parameters (?c - corso ?f - fasciaOraria)
;     :precondition (and 
;         (not (occupata ?f)) 
;         ;(not (associazione ?c ?f)
;         ;(not (assegnato ?c))
;         (>= (durataCorso ?c) 2)
;     )
;     :effect (and 
;         (occupata ?f) 
;         ;(assegnato ?c) 
;         (decrease (durataCorso ?c) 2)
;         (increase (costoAzione) 1)
;     )
; )


)