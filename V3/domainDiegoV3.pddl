;Header and description   ctrl + ù per commentare

(define (domain domainDiegoV3)

;remove requirements that are not needed
(:requirements :typing :negative-preconditions :fluents) ;necessary to remove warnings

(:types
    fasciaOraria
    corso
    docente
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;i primi 2 influenzano il numero di stati, gli altri non vengono modificati quindi influiscono meno
    (occupata ?f - fasciaOraria) 
    (oraCorrente ?f - fasciaOraria)
    (docenteOccupato ?d - docente ?f - fasciaOraria)

    (next ?f1 ?f2 - fasciaOraria)
    (fineGiornata ?f1 - fasciaOraria ?f2 - fasciaOraria)
    (pausaPranzo ?f1 - fasciaOraria ?f2 - fasciaOraria)
    (insegna ?d - docente ?c - corso)
)


(:functions ;todo: define numeric functions here
    (durataCorso ?c - corso)
    (costoAzione)
)

(:action assegna2ore
    :parameters (?c - corso ?f1 - fasciaOraria ?f2 - fasciaOraria ?d - docente)
    :precondition (and 
        (oraCorrente ?f1)
        (next ?f1 ?f2)
        (not (occupata ?f1))
        (not (occupata ?f2))
        (>= (durataCorso ?c) 2)

        (insegna ?d ?c)
        (not (docenteOccupato ?d ?f1))
        (not (docenteOccupato ?d ?f2))
    )
    :effect (and 
        (occupata ?f1) 
        (occupata ?f2)
        (decrease (durataCorso ?c) 2)
        (increase (costoAzione) 4)
        (not (oraCorrente ?f1))
        (oraCorrente ?f2)
        (docenteOccupato ?d ?f1)
        (docenteOccupato ?d ?f2)
    )
)
(:action assegna3ore
    :parameters (?c - corso ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria ?d - docente)
    :precondition (and 
        (oraCorrente ?f1)
        (next ?f1 ?f2)
        (next ?f2 ?f3)
        (not (occupata ?f1))
        (not (occupata ?f2))
        (not (occupata ?f3))
        (>= (durataCorso ?c) 3)

        (insegna ?d ?c)
        (not (docenteOccupato ?d ?f1))
        (not (docenteOccupato ?d ?f2))
        (not (docenteOccupato ?d ?f3))
    )
    :effect (and 
        (occupata ?f1) 
        (occupata ?f2)
        (occupata ?f3)
        (decrease (durataCorso ?c) 3)
        (increase (costoAzione) 3)
        (not (oraCorrente ?f1))
        (oraCorrente ?f3)

        (docenteOccupato ?d ?f1)
        (docenteOccupato ?d ?f2)
        (docenteOccupato ?d ?f3)
    )
)
(:action assegna4ore
    :parameters (?c - corso ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria ?f4 - fasciaOraria ?d - docente)
    :precondition (and 
        (oraCorrente ?f1)
        (next ?f1 ?f2)
        (next ?f2 ?f3)
        (next ?f3 ?f4)
        (not (occupata ?f1))
        (not (occupata ?f2))
        (not (occupata ?f3))
        (not (occupata ?f4))
        (>= (durataCorso ?c) 4)
        (insegna ?d ?c)
        (not (docenteOccupato ?d ?f1))
        (not (docenteOccupato ?d ?f2))
        (not (docenteOccupato ?d ?f3))
        (not (docenteOccupato ?d ?f4))
    )
    :effect (and 
        (occupata ?f1) 
        (occupata ?f2)
        (occupata ?f3)
        (occupata ?f4)
        (decrease (durataCorso ?c) 4)
        (increase (costoAzione) 2)
        (not (oraCorrente ?f1))
        (oraCorrente ?f4)
        (docenteOccupato ?d ?f1)
        (docenteOccupato ?d ?f2)
        (docenteOccupato ?d ?f3)
        (docenteOccupato ?d ?f4)
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
        (increase (costoAzione) 1) ;da valutare bene
    )
)
(:action terminaGiornata
    :parameters (?f1 - fasciaOraria ?f2 - fasciaOraria)
    :precondition (and 
        (oraCorrente ?f1)
        (fineGiornata ?f1 ?f2)
    )
    :effect (and 
        (not (oraCorrente ?f1))
        (oraCorrente ?f2)
    )
)
(:action pranzo
    :parameters (?f1 - fasciaOraria ?f2 - fasciaOraria)
    :precondition (and 
        (oraCorrente ?f1)
        (pausaPranzo ?f1 ?f2)
    )
    :effect (and 
        (not (oraCorrente ?f1))
        (oraCorrente ?f2)
    )
)



)