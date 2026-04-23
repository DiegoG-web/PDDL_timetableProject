(define (problem problemDiegoV2) (:domain domainDiegoV2)
    (:objects 
        cambioGiorno1
        cambioGiorno2
        cambioGiorno3
        cambioGiorno4
        cambioGiorno5

        mon08
        mon09
        mon10
        mon11
        mon12Pranzo
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
        tue12Pranzo
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
        wed12Pranzo
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
        thu12Pranzo
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
        fri12Pranzo
        fri13
        fri14
        fri15
        fri16
        fri17
        fri18 - fasciaOraria

        sistemiDigitali
        analisi
        componenti
        sistemiQualita
        robotica
        ux
        cybersecurity - corso

        ;corso2
        ;corso3 - corso

    )

    (:init
        ;todo: put the initial state's facts and numeric values here
        ;(onTable a)
        (= (costoAzione) 0)
        (= (durataCorso sistemiDigitali) 3)
        (= (durataCorso analisi) 3)
        (= (durataCorso componenti) 7)
        (= (durataCorso sistemiQualita) 8)
        (= (durataCorso robotica) 4)
        (= (durataCorso ux) 3)
        (= (durataCorso cybersecurity) 5)

        (occupata cambioGiorno1)
        (occupata cambioGiorno2)
        (occupata cambioGiorno3)
        (occupata cambioGiorno4)
        (occupata cambioGiorno5)
        (occupata mon12Pranzo)
        (occupata tue12Pranzo)
        (occupata wed12Pranzo)  
        (occupata thu12Pranzo)
        (occupata fri12Pranzo)

        (oraCorrente mon08)
        (next mon08 mon09)
        (next mon09 mon10)
        (next mon10 mon11)
        (next mon11 mon12Pranzo)
        (next mon12Pranzo mon13)
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
        (next tue11 tue12Pranzo)
        (next tue12Pranzo tue13)
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
        (next wed11 wed12Pranzo)
        (next wed12Pranzo wed13)
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
        (next thu11 thu12Pranzo)
        (next thu12Pranzo thu13)
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
        (next fri11 fri12Pranzo)
        (next fri12Pranzo fri13)
        (next fri13 fri14)
        (next fri14 fri15)
        (next fri15 fri16)
        (next fri16 fri17)
        (next fri17 fri18)
        (next fri18 cambioGiorno5)

        (fineGiornata mon08 cambioGiorno1)
        (fineGiornata mon09 cambioGiorno1)
        (fineGiornata mon10 cambioGiorno1)
        (fineGiornata mon11 cambioGiorno1)
        (fineGiornata mon13 cambioGiorno1)
        (fineGiornata mon14 cambioGiorno1)
        (fineGiornata mon15 cambioGiorno1)
        (fineGiornata mon16 cambioGiorno1)
        (fineGiornata mon17 cambioGiorno1)
        (fineGiornata mon18 cambioGiorno1)
        (fineGiornata tue08 cambioGiorno2)
        (fineGiornata tue09 cambioGiorno2)
        (fineGiornata tue10 cambioGiorno2)
        (fineGiornata tue11 cambioGiorno2)
        (fineGiornata tue13 cambioGiorno2)
        (fineGiornata tue14 cambioGiorno2)
        (fineGiornata tue15 cambioGiorno2)
        (fineGiornata tue16 cambioGiorno2)
        (fineGiornata tue17 cambioGiorno2)
        (fineGiornata tue18 cambioGiorno2)
        (fineGiornata wed08 cambioGiorno3)
        (fineGiornata wed09 cambioGiorno3)
        (fineGiornata wed10 cambioGiorno3)
        (fineGiornata wed11 cambioGiorno3)
        (fineGiornata wed13 cambioGiorno3)
        (fineGiornata wed14 cambioGiorno3)
        (fineGiornata wed15 cambioGiorno3)
        (fineGiornata wed16 cambioGiorno3)
        (fineGiornata wed17 cambioGiorno3)
        (fineGiornata wed18 cambioGiorno3)
        (fineGiornata thu08 cambioGiorno4)
        (fineGiornata thu09 cambioGiorno4)
        (fineGiornata thu10 cambioGiorno4)
        (fineGiornata thu11 cambioGiorno4)
        (fineGiornata thu13 cambioGiorno4)
        (fineGiornata thu14 cambioGiorno4)
        (fineGiornata thu15 cambioGiorno4)
        (fineGiornata thu16 cambioGiorno4)
        (fineGiornata thu17 cambioGiorno4)
        (fineGiornata thu18 cambioGiorno4)
        (fineGiornata fri08 cambioGiorno5)
        (fineGiornata fri09 cambioGiorno5)
        (fineGiornata fri10 cambioGiorno5)
        (fineGiornata fri11 cambioGiorno5)
        (fineGiornata fri13 cambioGiorno5)
        (fineGiornata fri14 cambioGiorno5)
        (fineGiornata fri15 cambioGiorno5)
        (fineGiornata fri16 cambioGiorno5)
        (fineGiornata fri17 cambioGiorno5)
        (fineGiornata fri18 cambioGiorno5)

        
    )

    (:goal (and
        ;todo: put the goal condition here
        ;(onTop a c)
        ;(assegnato corso1)
        ;(assegnato corso2)
        ;(assegnato corso3)
        (= (durataCorso sistemiDigitali) 0)
        (= (durataCorso analisi) 0)
        (= (durataCorso componenti) 0)
        (= (durataCorso sistemiQualita) 0)
        (= (durataCorso robotica) 0)
        (= (durataCorso ux) 0)
        (= (durataCorso cybersecurity) 0)
    ))

    ;un-comment the following line if metric is needed

    ;costoAzione
    (:metric minimize (costoAzione))
)

