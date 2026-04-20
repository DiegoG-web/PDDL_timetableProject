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
    (oraCorrente ?f - fasciaOraria)
    (next ?f1 ?f2 - fasciaOraria)
)


(:functions ;todo: define numeric functions here
    (durataCorso ?c - corso)
    (costoAzione)
)

;define actions here
(:action assegna1ora
    :parameters (?c - corso ?f - fasciaOraria)
    :precondition (and 
        (oraCorrente ?f)
        (not (occupata ?f))
        (> (durataCorso ?c) 0)
    )
    :effect (and
        (occupata ?f)
        (decrease (durataCorso ?c) 1)
        (increase (costoAzione) 3)
    )
)
(:action assegna2ore
    :parameters (?c - corso ?f1 - fasciaOraria ?f2 - fasciaOraria)
    :precondition (and 
        (oraCorrente ?f1)
        (next ?f1 ?f2)
        (not (occupata ?f1))
        (not (occupata ?f2))
        (>= (durataCorso ?c) 2)
    )
    :effect (and 
        (occupata ?f1) 
        (occupata ?f2)
        (decrease (durataCorso ?c) 2)
        (increase (costoAzione) 2)
        (not (oraCorrente ?f1))
        (oraCorrente ?f2)
    )
)
(:action assegna3ore
    :parameters (?c - corso ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria)
    :precondition (and 
        (oraCorrente ?f1)
        (next ?f1 ?f2)
        (next ?f2 ?f3)
        (not (occupata ?f1))
        (not (occupata ?f2))
        (not (occupata ?f3))
        (>= (durataCorso ?c) 3)
    )
    :effect (and 
        (occupata ?f1) 
        (occupata ?f2)
        (occupata ?f3)
        (decrease (durataCorso ?c) 3)
        (increase (costoAzione) 1)
        (not (oraCorrente ?f1))
        (oraCorrente ?f3)
    )
)
    (:action scorriTempo
        :parameters (?f1 - fasciaOraria ?f2 - fasciaOraria)
        :precondition (and 
            (oraCorrente ?f1)
            (next ?f1 ?f2)
    )
    :effect (and 
        (not (oraCorrente ?f1))
        (oraCorrente ?f2)
    )
)


)