    (define (problem problemBrando) (:domain domainBrando)
    (:objects 
        sistemiDigitali
        analisi
        componenti
        sistemiQualita
        robotica
        ux
        cybersecurity - corso

        
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
    )

    (:init
        (fasciaOrariaLibera mon08)
        (fasciaOrariaLibera mon09)
        (fasciaOrariaLibera mon10)
        (fasciaOrariaLibera mon11)
        (fasciaOrariaLibera mon12)
        (fasciaOrariaLibera mon13)
        (fasciaOrariaLibera mon14)
        (fasciaOrariaLibera mon15)
        (fasciaOrariaLibera mon16)
        (fasciaOrariaLibera mon17)
        (fasciaOrariaLibera mon18)
        (fasciaOrariaLibera tue08)
        (fasciaOrariaLibera tue09)
        (fasciaOrariaLibera tue10)
        (fasciaOrariaLibera tue11)
        (fasciaOrariaLibera tue12)
        (fasciaOrariaLibera tue13)
        (fasciaOrariaLibera tue14)
        (fasciaOrariaLibera tue15)
        (fasciaOrariaLibera tue16)
        (fasciaOrariaLibera tue17)
        (fasciaOrariaLibera tue18)
        (fasciaOrariaLibera wed08)
        (fasciaOrariaLibera wed09)
        (fasciaOrariaLibera wed10)
        (fasciaOrariaLibera wed11)
        (fasciaOrariaLibera wed12)
        (fasciaOrariaLibera wed13)
        (fasciaOrariaLibera wed14)
        (fasciaOrariaLibera wed15)
        (fasciaOrariaLibera wed16)
        (fasciaOrariaLibera wed17)
        (fasciaOrariaLibera wed18)
        (fasciaOrariaLibera thu08)
        (fasciaOrariaLibera thu09)
        (fasciaOrariaLibera thu10)
        (fasciaOrariaLibera thu11)
        (fasciaOrariaLibera thu12)
        (fasciaOrariaLibera thu13)
        (fasciaOrariaLibera thu14)
        (fasciaOrariaLibera thu15)
        (fasciaOrariaLibera thu16)
        (fasciaOrariaLibera thu17)
        (fasciaOrariaLibera thu18)
        (fasciaOrariaLibera fri08)
        (fasciaOrariaLibera fri09)
        (fasciaOrariaLibera fri10)
        (fasciaOrariaLibera fri11)
        (fasciaOrariaLibera fri12)
        (fasciaOrariaLibera fri13)
        (fasciaOrariaLibera fri14)
        (fasciaOrariaLibera fri15)
        (fasciaOrariaLibera fri16)
        (fasciaOrariaLibera fri17)
        (fasciaOrariaLibera fri18) 

        (= (costoTotale) 0)

        (= (costoFasciaOraria mon08) 1); a incrementare nel giorno
        (= (costoFasciaOraria mon09) 2)
        (= (costoFasciaOraria mon10) 3)
        (= (costoFasciaOraria mon11) 4)
        (= (costoFasciaOraria mon12) 5)
        (= (costoFasciaOraria mon13) 6)
        (= (costoFasciaOraria mon14) 7)
        (= (costoFasciaOraria mon15) 8)
        (= (costoFasciaOraria mon16) 9)
        (= (costoFasciaOraria mon17) 10)
        (= (costoFasciaOraria mon18) 11)
        (= (costoFasciaOraria tue08) 1)
        (= (costoFasciaOraria tue09) 2)
        (= (costoFasciaOraria tue10) 3)
        (= (costoFasciaOraria tue11) 4)
        (= (costoFasciaOraria tue12) 5)
        (= (costoFasciaOraria tue13) 6)
        (= (costoFasciaOraria tue14) 7)
        (= (costoFasciaOraria tue15) 8)
        (= (costoFasciaOraria tue16) 9)
        (= (costoFasciaOraria tue17) 10)
        (= (costoFasciaOraria tue18) 11)
        (= (costoFasciaOraria wed08) 1)
        (= (costoFasciaOraria wed09) 2)
        (= (costoFasciaOraria wed10) 3)
        (= (costoFasciaOraria wed11) 4)
        (= (costoFasciaOraria wed12) 5)
        (= (costoFasciaOraria wed13) 6)
        (= (costoFasciaOraria wed14) 7)
        (= (costoFasciaOraria wed15) 8)
        (= (costoFasciaOraria wed16) 9)
        (= (costoFasciaOraria wed17) 10)
        (= (costoFasciaOraria wed18) 11)
        (= (costoFasciaOraria thu08) 1)
        (= (costoFasciaOraria thu09) 2)
        (= (costoFasciaOraria thu10) 3)
        (= (costoFasciaOraria thu11) 4)
        (= (costoFasciaOraria thu12) 5)
        (= (costoFasciaOraria thu13) 6)
        (= (costoFasciaOraria thu14) 7)
        (= (costoFasciaOraria thu15) 8)
        (= (costoFasciaOraria thu16) 9)
        (= (costoFasciaOraria thu17) 10)
        (= (costoFasciaOraria thu18) 11)
        (= (costoFasciaOraria fri08) 1)
        (= (costoFasciaOraria fri09) 2)
        (= (costoFasciaOraria fri10) 3)
        (= (costoFasciaOraria fri11) 4)
        (= (costoFasciaOraria fri12) 5)
        (= (costoFasciaOraria fri13) 6)
        (= (costoFasciaOraria fri14) 7)
        (= (costoFasciaOraria fri15) 8)
        (= (costoFasciaOraria fri16) 9)
        (= (costoFasciaOraria fri17) 10)
        (= (costoFasciaOraria fri18) 11) 
    )

    (:goal (and
        (fissato sistemiDigitali)
        (fissato analisi)
        (fissato componenti)
        (fissato sistemiQualita)
        (fissato robotica)
        (fissato ux)
        (fissato cybersecurity)     
    ))

    ;un-comment the following line if metric is needed

    ;costoTotale
    (:metric minimize (costoTotale))
)
