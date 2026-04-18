;Header and description

(define (domain domain_name)

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
)

;define actions here
(:action assegna
    :parameters (?c - corso ?f - fasciaOraria)
    :precondition (and 
        (not (occupata ?f)) 
        ;(not (associazione ?c ?f)
        (not (assegnato ?c))
    )
    :effect (and (occupata ?f) (assegnato ?c))
)


)