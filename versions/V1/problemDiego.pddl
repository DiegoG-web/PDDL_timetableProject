(define (problem problemDiego) (:domain domainDiego)
    (:objects 
        cambioGiorno1
        cambioGiorno2
        cambioGiorno3
        cambioGiorno4

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
        (= (durataCorso corso3) 11)

        (occupata cambioGiorno1)
        (occupata cambioGiorno2)
        (occupata cambioGiorno3)
        (occupata cambioGiorno4)
        
        (oraCorrente mon08)
        (next mon08 mon09)
        (next mon09 mon10)
        (next mon10 mon11)
        (next mon11 mon12)
        (next mon12 mon13)
        (next mon13 mon14)
        (next mon14 mon15)
        (next mon15 mon16)
        (next mon16 mon17)
        (next mon17 mon18)
        (next mon18 cambioGiorno1)
        (next cambioGiorno1 tue08)
        (next tue08 tue09)
        (next tue09 tue10)
        (next tue10 tue11)
        (next tue11 tue12)
        (next tue12 tue13)
        (next tue13 tue14)
        (next tue14 tue15)
        (next tue15 tue16)
        (next tue16 tue17)
        (next tue17 tue18)
        (next tue18 cambioGiorno2)
        (next cambioGiorno2 wed08)
        (next wed08 wed09)
        (next wed09 wed10)
        (next wed10 wed11)
        (next wed11 wed12)
        (next wed12 wed13)
        (next wed13 wed14)
        (next wed14 wed15)
        (next wed15 wed16)
        (next wed16 wed17)
        (next wed17 wed18)
        (next wed18 cambioGiorno3)
        (next cambioGiorno3 thu08)
        (next thu08 thu09)
        (next thu09 thu10)
        (next thu10 thu11)
        (next thu11 thu12)
        (next thu12 thu13)
        (next thu13 thu14)
        (next thu14 thu15)
        (next thu15 thu16)
        (next thu16 thu17)
        (next thu17 thu18)
        (next thu18 cambioGiorno4)
        (next cambioGiorno4 fri08)
        (next fri08 fri09)
        (next fri09 fri10)
        (next fri10 fri11)
        (next fri11 fri12)
        (next fri12 fri13)
        (next fri13 fri14)
        (next fri14 fri15)
        (next fri15 fri16)
        (next fri16 fri17)
        (next fri17 fri18)

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
    (:metric minimize (costoAzione))
)

