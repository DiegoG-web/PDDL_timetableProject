
(define (domain domainBrando)
    ; (:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality :typing :action-costs)
    (:requirements :fluents :typing :negative-preconditions :action-costs)

    (:types 
        fasciaOraria
        corso
    )

    (:predicates
        (fissato ?c - corso)
        (fasciaOrariaLibera ?f - fasciaOraria)
    )


    (:functions
        ; costo totale
        (costoTotale)
        ; il costo specifico per la fasciaOraria
        (costoFasciaOraria ?f - fasciaOraria)
    )

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

;aggiungere costo di nuovi giorni
;più ore delle stessa materia
