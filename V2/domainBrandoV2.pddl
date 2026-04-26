
(define (domain domainBrandoV2)
    ; (:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality :typing :action-costs)
    (:requirements :fluents :typing :negative-preconditions :action-costs :equality )

    (:types 
        fasciaOraria
        corso
    )

    (:predicates
        (fissato ?c - corso)
        (fasciaOrariaLibera ?f - fasciaOraria)
        (consecutive ?f1 - fasciaOraria ?f2 - fasciaOraria)
        (stessoCorso ?c1 - corso ?c2 - corso)
        (triadeFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria)
        (triadeCorsi ?c1 - corso ?c2 - corso ?c3 - corso)
    )


    (:functions
        ; costo totale
        (total-cost)
        ; il costo specifico per la fasciaOraria
        (costoFasciaOraria ?f - fasciaOraria)
        ;(treeHeight)
    )

    (:action fissaCorso1H
        :parameters (
            ?c - corso
            ?f - fasciaOraria
        )
        :precondition (and 
            (not (fissato ?c));il corso non deve essere stato fissato, schedulato
            (fasciaOrariaLibera ?f)
            ;(<= (costoFasciaOraria ?f) (/ (+(total-cost) 1) (/ (treeHeight) 2))); costoFasciaOraria ?f <= (total-cost+3)/(treeHeight/2)    
            ;DA APPROFONDIRE riduzione del branching factor con soglia di costo dipendente dal total-cost e la profondità
        )
        :effect (and 
            (fissato ?c)
            (not (fasciaOrariaLibera ?f))
            (increase (total-cost) (costoFasciaOraria ?f))
            ;(increase (treeHeight) 1)
        )
    )

    (:action fissaCorso2H
        :parameters (
            ?c1 - corso 
            ?c2 - corso 
            ?f1 - fasciaOraria 
            ?f2 - fasciaOraria
        )
        :precondition (and 
            (not (fissato ?c1))
            (not (fissato ?c2))
            (not (= ?c1 ?c2))
            (stessoCorso ?c1 ?c2)
            
            (fasciaOrariaLibera ?f1)
            (fasciaOrariaLibera ?f2)
            (consecutive ?f1 ?f2)
        )
        :effect (and 
            (fissato ?c1)
            (fissato ?c2)
            (not (fasciaOrariaLibera ?f1))
            (not (fasciaOrariaLibera ?f2))
            (increase (total-cost) (- (+ (costoFasciaOraria ?f1) (costoFasciaOraria ?f2)) 2)); socnto di 2
        )
    )
    (:action fissaCorso3H
        :parameters (
            ?c1 - corso 
            ?c2 - corso 
            ?c3 - corso 
            ?f1 - fasciaOraria 
            ?f2 - fasciaOraria
            ?f3 - fasciaOraria
        )
        :precondition (and 
            (not (fissato ?c1))
            (not (fissato ?c2))
            (not (fissato ?c3))
            (not (= ?c1 ?c2))
            (not (= ?c1 ?c3))
            (not (= ?c3 ?c2))
            (stessoCorso ?c1 ?c2)
            (stessoCorso ?c1 ?c3)
            (stessoCorso ?c2 ?c3); inutile credo
            
            (fasciaOrariaLibera ?f1)
            (fasciaOrariaLibera ?f2)
            (fasciaOrariaLibera ?f3)
            (consecutive ?f1 ?f2)
            (consecutive ?f2 ?f3)
        )
        :effect (and 
            (fissato ?c1)
            (fissato ?c2)
            (fissato ?c3)
            (not (fasciaOrariaLibera ?f1))
            (not (fasciaOrariaLibera ?f2))
            (not (fasciaOrariaLibera ?f3))
            (increase (total-cost) (- (+ (costoFasciaOraria ?f1) (+ (costoFasciaOraria ?f2) (costoFasciaOraria ?f3))) 3)); socnto di 3
        )
    )
)





;aggiungere costo di nuovi giorni
;più ore delle stessa materia
