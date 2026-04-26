
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
        (treeHeight)
    )

    (:action fissaCorso
        :parameters (
            ?c - corso
            ?f - fasciaOraria
        )
        :precondition (and 
            (not (fissato ?c));il corso non deve essere stato fissato, schedulato
            (fasciaOrariaLibera ?f)
            (<= (costoFasciaOraria ?f) (/ (+(costoTotale) 1) (/ (treeHeight) 2))); costoFasciaOraria ?f <= (costoTotale+3)/(treeHeight/2)    
            ;DA APPROFONDIRE riduzione del branching factor con soglia di costo dipendente dal costototale e la profondità
        )
        :effect (and 
            (fissato ?c)
            (not (fasciaOrariaLibera ?f))
            (increase (costoTotale) (costoFasciaOraria ?f))
            (increase (treeHeight) 1)
        )
    )
)

; (and (<= (ypos ?c) 8)
;             ;check for walls in the direction of travel
;             (forall (?w - wall)
;                 (not (and 
;                     (= (wallXpos ?w) (xpos ?c))
;                     (= (wallYpos ?w) (+ (ypos ?c) 1)); + for temporary math
;                 ))
;             )
;         )
;aggiungere costo di nuovi giorni
;più ore delle stessa materia
