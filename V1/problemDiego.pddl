(define (problem problemDiego) (:domain domainDiego)
    (:objects 
        mon08
        mon09
        mon10
        mon11
        mon12
        mon13
        mon14
        mon15
        mon16
        mon17
        mon18

        tue08
        tue09
        tue10
        tue11
        tue12
        tue13
        tue14
        tue15
        tue16
        tue17
        tue18

        wed08
        wed09
        wed10
        wed11
        wed12
        wed13
        wed14
        wed15
        wed16
        wed17
        wed18

        thu08
        thu09
        thu10
        thu11
        thu12
        thu13
        thu14
        thu15
        thu16
        thu17
        thu18

        fri08
        fri09
        fri10
        fri11
        fri12
        fri13
        fri14
        fri15
        fri16
        fri17
        fri18 - fasciaOraria

        corso1
        corso2
        corso3 - corso

    )

    (:init
        ;todo: put the initial state's facts and numeric values here
        ;(onTable a)
        (= (durataCorso corso1) 2)
        (= (durataCorso corso2) 3)
        (= (durataCorso corso3) 1)
        
        ;(= (batteryLevel) 3)
        ;(not (grasping))

    )

    (:goal (and
        ;todo: put the goal condition here
        ;(onTop a c)
        ;(assegnato corso1)
        ;(assegnato corso2)
        ;(assegnato corso3)
        (= (durataCorso corso1) 0)
        (= (durataCorso corso2) 0)
        (= (durataCorso corso3) 0)
    ))

    ;un-comment the following line if metric is needed
    ;(:metric minimize (costoAzione))
)

