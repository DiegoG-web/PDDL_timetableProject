(define (problem problemDiegoV5) (:domain domainDiegoV5)
    (:objects

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
        cambioGiorno1
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
        cambioGiorno2
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
        cambioGiorno3
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
        cambioGiorno4
        fri08
        fri09
        fri10
        fri11
        fri13
        fri14
        fri15
        fri16
        fri17
        fri18
        cambioGiorno5 - fasciaOraria

        sistemiDigitali
        analisi
        componenti
        sistemiQualita
        robotica
        ux
        cybersecurity
        ;laboratorioRaspberry - corso
        elettronicaGenerale
        sistemiOperativi
        linguaggiProgrammazione
        basiDiDati - corso
        ;ingegneriaSoftware - corso

        sisinni
        kovarik
        bau
        serpelloni
        tampalini
        barricelli
        gringoli
        flammini
        baroni
        lamperti
        rula -docente
        ;zanella - docente

        aula1
        aula2
        aula3 - aula

        ; gruppoITID1
        ; gruppoITID2
        gruppoITID3 - gruppoStudenti
        gruppoInformatica3 - gruppoStudenti

    )


    (:init

        (= (costoAzione) 0)
        (= (durataCorso sistemiDigitali) 3)
        (= (durataCorso analisi) 3)
        (= (durataCorso componenti) 7)
        (= (durataCorso sistemiQualita) 8)
        (= (durataCorso robotica) 4)
        (= (durataCorso ux) 3)
        (= (durataCorso cybersecurity) 5)
        ;(= (durataCorso laboratorioRaspberry) 12)
        (= (durataCorso elettronicaGenerale) 9)
        (= (durataCorso sistemiOperativi) 5)
        (= (durataCorso linguaggiProgrammazione) 5)
        (= (durataCorso basiDiDati) 5)
        ;(= (durataCorso ingegneriaSoftware) 5)

        (occupata aula1 cambioGiorno1)
        (occupata aula1 cambioGiorno2)
        (occupata aula1 cambioGiorno3)
        (occupata aula1 cambioGiorno4)
        (occupata aula1 cambioGiorno5)
        (occupata aula2 cambioGiorno1)
        (occupata aula2 cambioGiorno2)
        (occupata aula2 cambioGiorno3)
        (occupata aula2 cambioGiorno4)
        (occupata aula2 cambioGiorno5)
        (occupata aula3 cambioGiorno1)
        (occupata aula3 cambioGiorno2)
        (occupata aula3 cambioGiorno3)
        (occupata aula3 cambioGiorno4)
        (occupata aula3 cambioGiorno5)

        (oraCorrente mon08)
        (inizioSettimana mon08)
        (aulaAttiva aula1)
        (prossimaAula aula1 aula2)
        (prossimaAula aula2 aula3)
        (fineSettimana cambioGiorno5)
        
        (next mon08 mon09)
        (next mon09 mon10)
        (next mon10 mon11)
        (next mon13 mon14)
        (next mon14 mon15)
        (next mon15 mon16)
        (next mon16 mon17)
        (next mon17 mon18)
        (next cambioGiorno1 tue08)
        (next tue08 tue09)
        (next tue09 tue10)
        (next tue10 tue11)
        (next tue13 tue14)
        (next tue14 tue15)
        (next tue15 tue16)
        (next tue16 tue17)
        (next tue17 tue18)
        (next cambioGiorno2 wed08)
        (next wed08 wed09)
        (next wed09 wed10)
        (next wed10 wed11)
        (next wed13 wed14)
        (next wed14 wed15)
        (next wed15 wed16)
        (next wed16 wed17)
        (next wed17 wed18)
        (next cambioGiorno3 thu08)
        (next thu08 thu09)
        (next thu09 thu10)
        (next thu10 thu11)
        (next thu13 thu14)
        (next thu14 thu15)
        (next thu15 thu16)
        (next thu16 thu17)
        (next thu17 thu18)
        (next cambioGiorno4 fri08)
        (next fri08 fri09)
        (next fri09 fri10)
        (next fri10 fri11)
        (next fri13 fri14)
        (next fri14 fri15)
        (next fri15 fri16)
        (next fri16 fri17)
        (next fri17 fri18)

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

        (pausaPranzo mon11 mon13)
        (pausaPranzo tue11 tue13)
        (pausaPranzo wed11 wed13)
        (pausaPranzo thu11 thu13)
        (pausaPranzo fri11 fri13)

        (insegna sisinni sistemiDigitali)
        (insegna kovarik analisi)
        (insegna bau componenti)
        (insegna serpelloni sistemiQualita)
        (insegna tampalini robotica)
        (insegna barricelli ux)
        (insegna gringoli cybersecurity)
        ;(insegna sisinni laboratorioRaspberry)
        (insegna flammini elettronicaGenerale)
        (insegna baroni sistemiOperativi)
        (insegna lamperti linguaggiProgrammazione)
        (insegna rula basiDiDati)
        ;(insegna zanella ingegneriaSoftware)

        (frequenta gruppoITID3 sistemiDigitali)
        (frequenta gruppoITID3 analisi)
        (frequenta gruppoITID3 componenti)
        (frequenta gruppoITID3 sistemiQualita)
        (frequenta gruppoITID3 robotica)
        (frequenta gruppoITID3 ux)
        (frequenta gruppoITID3 cybersecurity)
        ;(frequenta gruppoITID3 laboratorioRaspberry)
        (frequenta gruppoInformatica3 elettronicaGenerale)
        (frequenta gruppoInformatica3 sistemiOperativi)
        (frequenta gruppoInformatica3 linguaggiProgrammazione)
        (frequenta gruppoInformatica3 basiDiDati)
        ;(frequenta gruppoInformatica3 ingegneriaSoftware)

    )

    (:goal (and
        (= (durataCorso sistemiDigitali) 0)
        (= (durataCorso analisi) 0)
        (= (durataCorso componenti) 0)
        (= (durataCorso sistemiQualita) 0)
        (= (durataCorso robotica) 0)
        (= (durataCorso ux) 0)
        (= (durataCorso cybersecurity) 0)
        ;(= (durataCorso laboratorioRaspberry) 0)
        (= (durataCorso elettronicaGenerale) 0)
        (= (durataCorso sistemiOperativi) 0)
        (= (durataCorso linguaggiProgrammazione) 0)
        (= (durataCorso basiDiDati) 0)
        ;(= (durataCorso ingegneriaSoftware) 0)
    ))
    

    ;costoAzione
    (:metric minimize (costoAzione))
)

