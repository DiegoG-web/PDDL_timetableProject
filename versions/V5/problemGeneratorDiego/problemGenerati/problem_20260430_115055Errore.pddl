(define (problem problemDiegoV5) (:domain domainDiegoV5)
    
    (:objects
        sistemiDigitali
analisi
componenti
sistemiDiMisura - corso

Sisinni
Marcellini
Bau
Serpelloni - docente

N6
N3
B31 - aula

ITID1
ITID3 - gruppoStudenti

cambioGiorno1
cambioGiorno2
cambioGiorno3
cambioGiorno4
cambioGiorno5 - fasciaOraria
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


    )

    (:init
        (= (durataCorso sistemiDigitali) 3)
(insegna Sisinni sistemiDigitali)
(frequenta ITID3 sistemiDigitali)

(= (durataCorso analisi) 3)
(insegna Marcellini analisi)
(frequenta ITID1 analisi)

(= (durataCorso componenti) 7)
(insegna Bau componenti)
(frequenta ITID3 componenti)

(= (durataCorso sistemiDiMisura) 9)
(insegna Serpelloni sistemiDiMisura)
(frequenta ITID3 sistemiDiMisura)

(docenteOccupato Serpelloni mon09)
(docenteOccupato Serpelloni mon10)
(docenteOccupato Serpelloni mon11)
(docenteOccupato Serpelloni mon12)
(docenteOccupato Serpelloni mon13)
(docenteOccupato Serpelloni mon14)
(docenteOccupato Serpelloni mon15)
(docenteOccupato Serpelloni mon16)
(docenteOccupato Serpelloni mon17)
(docenteOccupato Serpelloni mon18)

(aulaAttiva N6)
(prossimaAula N6 N3)
(prossimaAula N3 B31)

(occupata N6 mon09)
(occupata N6 mon10)
(occupata N6 mon11)
(occupata N6 mon12)
(occupata N6 mon13)
(occupata N6 mon14)
(occupata N6 mon15)
(occupata N6 mon16)
(occupata N6 mon17)
(occupata N6 mon18)

(gruppoStudentiOccupato ITID1 tue09)
(gruppoStudentiOccupato ITID1 tue10)
(gruppoStudentiOccupato ITID1 tue11)
(gruppoStudentiOccupato ITID1 tue12)
(gruppoStudentiOccupato ITID1 tue13)
(gruppoStudentiOccupato ITID1 tue14)
(gruppoStudentiOccupato ITID1 tue15)
(gruppoStudentiOccupato ITID1 tue16)
(gruppoStudentiOccupato ITID1 tue17)
(gruppoStudentiOccupato ITID1 tue18)

(= (costoAzione) 0)
(oraCorrente mon09)
(inizioSettimana mon09)
(fineSettimana cambioGiorno5)

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
(next cambioGiorno1 tue09)
(fineGiornata mon09 cambioGiorno1)
(fineGiornata mon10 cambioGiorno1)
(fineGiornata mon11 cambioGiorno1)
(fineGiornata mon12 cambioGiorno1)
(fineGiornata mon13 cambioGiorno1)
(fineGiornata mon14 cambioGiorno1)
(fineGiornata mon15 cambioGiorno1)
(fineGiornata mon16 cambioGiorno1)
(fineGiornata mon17 cambioGiorno1)
(fineGiornata mon18 cambioGiorno1)
(occupata N6 cambioGiorno1)
(occupata N3 cambioGiorno1)
(occupata B31 cambioGiorno1)

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
(next cambioGiorno2 wed09)
(fineGiornata tue09 cambioGiorno2)
(fineGiornata tue10 cambioGiorno2)
(fineGiornata tue11 cambioGiorno2)
(fineGiornata tue12 cambioGiorno2)
(fineGiornata tue13 cambioGiorno2)
(fineGiornata tue14 cambioGiorno2)
(fineGiornata tue15 cambioGiorno2)
(fineGiornata tue16 cambioGiorno2)
(fineGiornata tue17 cambioGiorno2)
(fineGiornata tue18 cambioGiorno2)
(occupata N6 cambioGiorno2)
(occupata N3 cambioGiorno2)
(occupata B31 cambioGiorno2)

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
(next cambioGiorno3 thu09)
(fineGiornata wed09 cambioGiorno3)
(fineGiornata wed10 cambioGiorno3)
(fineGiornata wed11 cambioGiorno3)
(fineGiornata wed12 cambioGiorno3)
(fineGiornata wed13 cambioGiorno3)
(fineGiornata wed14 cambioGiorno3)
(fineGiornata wed15 cambioGiorno3)
(fineGiornata wed16 cambioGiorno3)
(fineGiornata wed17 cambioGiorno3)
(fineGiornata wed18 cambioGiorno3)
(occupata N6 cambioGiorno3)
(occupata N3 cambioGiorno3)
(occupata B31 cambioGiorno3)

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
(next cambioGiorno4 fri09)
(fineGiornata thu09 cambioGiorno4)
(fineGiornata thu10 cambioGiorno4)
(fineGiornata thu11 cambioGiorno4)
(fineGiornata thu12 cambioGiorno4)
(fineGiornata thu13 cambioGiorno4)
(fineGiornata thu14 cambioGiorno4)
(fineGiornata thu15 cambioGiorno4)
(fineGiornata thu16 cambioGiorno4)
(fineGiornata thu17 cambioGiorno4)
(fineGiornata thu18 cambioGiorno4)
(occupata N6 cambioGiorno4)
(occupata N3 cambioGiorno4)
(occupata B31 cambioGiorno4)

(next fri09 fri10)
(next fri10 fri11)
(next fri11 fri12)
(next fri12 fri13)
(next fri13 fri14)
(next fri14 fri15)
(next fri15 fri16)
(next fri16 fri17)
(next fri17 fri18)
(next fri18 cambioGiorno5)
(fineGiornata fri09 cambioGiorno5)
(fineGiornata fri10 cambioGiorno5)
(fineGiornata fri11 cambioGiorno5)
(fineGiornata fri12 cambioGiorno5)
(fineGiornata fri13 cambioGiorno5)
(fineGiornata fri14 cambioGiorno5)
(fineGiornata fri15 cambioGiorno5)
(fineGiornata fri16 cambioGiorno5)
(fineGiornata fri17 cambioGiorno5)
(fineGiornata fri18 cambioGiorno5)
(occupata N6 cambioGiorno5)
(occupata N3 cambioGiorno5)
(occupata B31 cambioGiorno5)


    )

    (:goal (and
        (= (durataCorso sistemiDigitali) 0)
(= (durataCorso analisi) 0)
(= (durataCorso componenti) 0)
(= (durataCorso sistemiDiMisura) 0)

    ))

    (:metric minimize (costoAzione))
    )
    