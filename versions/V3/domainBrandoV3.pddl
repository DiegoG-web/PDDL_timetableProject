
(define (domain domainBrandoV3)
    ; (:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality :typing :action-costs)
    (:requirements :fluents :typing :negative-preconditions :action-costs :equality )

    (:types 
        fasciaOraria
        corso
        professore
        aula
    )

    (:predicates
        (fissato ?c - corso)
        (fasciaOrariaLibera ?f - fasciaOraria)
        (consecutive ?f1 - fasciaOraria ?f2 - fasciaOraria)
        (stessoCorso ?c1 - corso ?c2 - corso)
        (triadeFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria)
        (triadeCorsi ?c1 - corso ?c2 - corso ?c3 - corso)
        (quartettoFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria ?f4 - fasciaOraria)
        (quartettoCorsi ?c1 - corso ?c2 - corso ?c3 - corso ?c4 - corso)

        (insegna ?p - professore ?c - corso)
        (profDisponibile ?p - professore ?f - fasciaOraria)

        (aulaDisponibile ?a - aula ?f - fasciaOraria);introdurre una function per la capienza?
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
            ?p - professore
            ?a - aula
        )
        :precondition (and 
            (not (fissato ?c));il corso non deve essere stato fissato, schedulato
            (fasciaOrariaLibera ?f)
            ;(<= (costoFasciaOraria ?f) (/ (+(total-cost) 1) (/ (treeHeight) 2))); costoFasciaOraria ?f <= (total-cost+3)/(treeHeight/2)    
            ;DA APPROFONDIRE riduzione del branching factor con soglia di costo dipendente dal total-cost e la profondità
            (insegna ?p ?c)
            (profDisponibile ?p ?f)
            (aulaDisponibile ?a ?f)
        )
        :effect (and 
            (fissato ?c)
            (not (fasciaOrariaLibera ?f))
            (increase (total-cost) (costoFasciaOraria ?f))
            ;(increase (treeHeight) 1)
            (not (profDisponibile ?p ?f))
            (not (aulaDisponibile ?a ?f))
        )
    )

    (:action fissaCorso2H
        :parameters (
            ?c1 - corso 
            ?c2 - corso 
            ?f1 - fasciaOraria 
            ?f2 - fasciaOraria
            ?p - professore
            ?a - aula
        )
        :precondition (and 
            (not (fissato ?c1))
            (not (fissato ?c2))
            (not (= ?c1 ?c2))
            (stessoCorso ?c1 ?c2)
            
            (fasciaOrariaLibera ?f1)
            (fasciaOrariaLibera ?f2)
            (consecutive ?f1 ?f2)

            (insegna ?p ?c1)
            
            (profDisponibile ?p ?f1)
            (profDisponibile ?p ?f2)

            (aulaDisponibile ?a ?f1)
            (aulaDisponibile ?a ?f2)
        )
        :effect (and 
            (fissato ?c1)
            (fissato ?c2)
            (not (fasciaOrariaLibera ?f1))
            (not (fasciaOrariaLibera ?f2))
            (increase (total-cost) (- (+ (costoFasciaOraria ?f1) (costoFasciaOraria ?f2)) 2)); socnto di 2
                        
            (not (profDisponibile ?p ?f1))
            (not (profDisponibile ?p ?f2))
            
            (not (aulaDisponibile ?a ?f1))
            (not (aulaDisponibile ?a ?f2))
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
            ?p - professore
            ?a - aula
        )
        :precondition (and 
            (not (fissato ?c1))
            (not (fissato ?c2))
            (not (fissato ?c3))

            (triadeCorsi ?c1 ?c2 ?c3)
            (triadeFasceOrarie ?f1 ?f2 ?f3)

            ;(stessoCorso ?c1 ?c2)
            ;(stessoCorso ?c1 ?c3)
            ;(stessoCorso ?c2 ?c3); inutile credo, e da rivedere come liste non ordinate
            
            (fasciaOrariaLibera ?f1)
            (fasciaOrariaLibera ?f2)
            (fasciaOrariaLibera ?f3)
            
            (insegna ?p ?c1)
            
            (profDisponibile ?p ?f1)
            (profDisponibile ?p ?f2)
            (profDisponibile ?p ?f3)

            (aulaDisponibile ?a ?f1)
            (aulaDisponibile ?a ?f2)
            (aulaDisponibile ?a ?f3)
        )
        :effect (and 
            (fissato ?c1)
            (fissato ?c2)
            (fissato ?c3)
            (not (fasciaOrariaLibera ?f1))
            (not (fasciaOrariaLibera ?f2))
            (not (fasciaOrariaLibera ?f3))
            (increase (total-cost) (- (+ (costoFasciaOraria ?f1) (+ (costoFasciaOraria ?f2) (costoFasciaOraria ?f3))) 3)); socnto di 3
            
            (not (profDisponibile ?p ?f1))
            (not (profDisponibile ?p ?f2))
            (not (profDisponibile ?p ?f3))
            
            (not (aulaDisponibile ?a ?f1))
            (not (aulaDisponibile ?a ?f2))
            (not (aulaDisponibile ?a ?f3))
        )
    )

    (:action fissaCorso4H
        :parameters (
            ?c1 - corso 
            ?c2 - corso 
            ?c3 - corso 
            ?c4 - corso 
            ?f1 - fasciaOraria 
            ?f2 - fasciaOraria
            ?f3 - fasciaOraria
            ?f4 - fasciaOraria
            ?p - professore
            ?a - aula
        )
        :precondition (and 
            (not (fissato ?c1))
            (not (fissato ?c2))
            (not (fissato ?c3))
            (not (fissato ?c4))

            (quartettoCorsi ?c1 ?c2 ?c3 ?c4)
            (quartettoFasceOrarie ?f1 ?f2 ?f3 ?f4)

            (fasciaOrariaLibera ?f1)
            (fasciaOrariaLibera ?f2)
            (fasciaOrariaLibera ?f3)
            (fasciaOrariaLibera ?f4)
            
            (insegna ?p ?c1)

            (profDisponibile ?p ?f1)
            (profDisponibile ?p ?f2)
            (profDisponibile ?p ?f3)
            (profDisponibile ?p ?f4)

            (aulaDisponibile ?a ?f1)
            (aulaDisponibile ?a ?f2)
            (aulaDisponibile ?a ?f3)
            (aulaDisponibile ?a ?f4)
        )
        :effect (and 
            (fissato ?c1)
            (fissato ?c2)
            (fissato ?c3)
            (fissato ?c4)
            (not (fasciaOrariaLibera ?f1))
            (not (fasciaOrariaLibera ?f2))
            (not (fasciaOrariaLibera ?f3))
            (not (fasciaOrariaLibera ?f4))
            (increase (total-cost) (- (+ (costoFasciaOraria ?f4) (+ (costoFasciaOraria ?f1) (+ (costoFasciaOraria ?f2) (costoFasciaOraria ?f3)))) 4)); socnto di 3
            
            (not (profDisponibile ?p ?f1))
            (not (profDisponibile ?p ?f2))
            (not (profDisponibile ?p ?f3))
            (not (profDisponibile ?p ?f4))
            
            (not (aulaDisponibile ?a ?f1))
            (not (aulaDisponibile ?a ?f2))
            (not (aulaDisponibile ?a ?f3))
            (not (aulaDisponibile ?a ?f4))
        )
    )
)



;aggiungere costo di nuovi giorni
;più ore delle stessa materia
