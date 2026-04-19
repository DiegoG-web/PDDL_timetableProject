;Header and description

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
)

;define actions here
(:action assegna
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
        (decrease (durataCorso ?c) 1))
)


)