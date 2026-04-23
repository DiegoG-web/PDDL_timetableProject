;Header and description

(define (domain domainBrando)
;remove requirements that are not needed
; (:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality :typing :action-costs)
(:requirements :fluents :typing :negative-preconditions :action-costs)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    fasciaOraria
    corso
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (fissato ?c - corso)
    (fasciaOrariaLibera ?f - fasciaOraria)
)


(:functions ;todo: define numeric functions here
    ; costo totale
    (costoTotale)
    ; il costo specifico per la fasciaOraria
    (costoFasciaOraria ?f - fasciaOraria)
)

;define actions here

(:action fissaCorso
    :parameters (
        ?c - corso
        ?f - fasciaOraria
    )
    :precondition (and 
        (not (fissato ?c));il corso non deve essere stato fissato, schedulato
        (fasciaOrariaLibera ?f)
    )
    :effect (and 
        (fissato ?c)
        (not (fasciaOrariaLibera ?f))
        (increase (costoTotale) (costoFasciaOraria ?f))
    )
)


)