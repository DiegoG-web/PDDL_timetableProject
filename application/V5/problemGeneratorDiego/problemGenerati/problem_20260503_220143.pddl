(define (problem problem_20260503_220143) (:domain domainDiegoV5)
    
    (:objects
        sistemiDigitali
analisi2 - corso

Sisinni
Kovarik - docente

N3 - aula

ITID3 - gruppoStudenti

cambioGiorno1
cambioGiorno2
cambioGiorno3
cambioGiorno4
cambioGiorno5 - fasciaOraria
mon08
mon09
mon10
mon11
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
fri13
fri14
fri15
fri16
fri17
fri18 - fasciaOraria


    )

    (:init
        (= (durataCorso sistemiDigitali) 3)
(insegna Sisinni sistemiDigitali)
(frequenta ITID3 sistemiDigitali)

(= (durataCorso analisi2) 5)
(insegna Kovarik analisi2)
(frequenta ITID3 analisi2)


(aulaAttiva N3)


(gruppoStudentiOccupato ITID3 tue08)
(gruppoStudentiOccupato ITID3 tue09)
(gruppoStudentiOccupato ITID3 tue10)
(gruppoStudentiOccupato ITID3 tue11)
(gruppoStudentiOccupato ITID3 tue13)
(gruppoStudentiOccupato ITID3 tue14)
(gruppoStudentiOccupato ITID3 tue15)
(gruppoStudentiOccupato ITID3 tue16)
(gruppoStudentiOccupato ITID3 tue17)
(gruppoStudentiOccupato ITID3 tue18)

(= (costoAzione) 0)
(oraCorrente mon08)
(inizioSettimana mon08)
(fineSettimana cambioGiorno5)

(pausaPranzo mon11 mon13)
(pausaPranzo tue11 tue13)
(pausaPranzo wed11 wed13)
(pausaPranzo thu11 thu13)
(pausaPranzo fri11 fri13)

(next mon08 mon09)
(next mon09 mon10)
(next mon10 mon11)
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

(occupata N3 cambioGiorno1)
(occupata N3 cambioGiorno2)
(occupata N3 cambioGiorno3)
(occupata N3 cambioGiorno4)
(occupata N3 cambioGiorno5)


    )

    (:goal (and
        (= (durataCorso sistemiDigitali) 0)
(= (durataCorso analisi2) 0)

    ))

    (:metric minimize (costoAzione))
    )
    