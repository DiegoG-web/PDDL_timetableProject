(define (problem problemBrandoV2) (:domain domainBrandoV2)
    (:objects
        sistemiDigitali_1
        sistemiDigitali_2
        sistemiDigitali_3
        analisi_1
        analisi_2
        analisi_3
        componenti_1
        componenti_2
        componenti_3
        componenti_4
        componenti_5
        componenti_6
        componenti_7
        ; sistemiQualita_1
        ; sistemiQualita_2
        ; sistemiQualita_3
        ; sistemiQualita_4
        ; sistemiQualita_5
        ; sistemiQualita_6
        ; sistemiQualita_7
        ; sistemiQualita_8
        ; robotica_1
        ; robotica_2
        ; robotica_3
        ; robotica_4
        ; ux_1
        ; ux_2
        ; ux_3
        ; cybersecurity_1
        ; cybersecurity_2
        ; cybersecurity_3
        ; cybersecurity_4
        ; cybersecurity_5 
        - corso
        
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

        (consecutive mon08 mon09)
        (consecutive mon09 mon10)
        (consecutive mon10 mon11)
        (consecutive mon11 mon12)
        (consecutive mon12 mon13)
        (consecutive mon13 mon14)
        (consecutive mon14 mon15)
        (consecutive mon15 mon16)
        (consecutive mon16 mon17)
        (consecutive mon17 mon18)
        ;(consecutive mon18 )
        (consecutive tue08 tue09)
        (consecutive tue09 tue10)
        (consecutive tue10 tue11)
        (consecutive tue11 tue12)
        (consecutive tue12 tue13)
        (consecutive tue13 tue14)
        (consecutive tue14 tue15)
        (consecutive tue15 tue16)
        (consecutive tue16 tue17)
        (consecutive tue17 tue18)
        ;(consecutive tue18 )
        (consecutive wed08 wed09)
        (consecutive wed09 wed10)
        (consecutive wed10 wed11)
        (consecutive wed11 wed12)
        (consecutive wed12 wed13)
        (consecutive wed13 wed14)
        (consecutive wed14 wed15)
        (consecutive wed15 wed16)
        (consecutive wed16 wed17)
        (consecutive wed17 wed18)
        ;(consecutive wed18 )
        (consecutive thu08 thu09)
        (consecutive thu09 thu10)
        (consecutive thu10 thu11)
        (consecutive thu11 thu12)
        (consecutive thu12 thu13)
        (consecutive thu13 thu14)
        (consecutive thu14 thu15)
        (consecutive thu15 thu16)
        (consecutive thu16 thu17)
        (consecutive thu17 thu18)
        ;(consecutive thu18 )
        (consecutive fri08 fri09)
        (consecutive fri09 fri10)
        (consecutive fri10 fri11)
        (consecutive fri11 fri12)
        (consecutive fri12 fri13)
        (consecutive fri13 fri14)
        (consecutive fri14 fri15)
        (consecutive fri15 fri16)
        (consecutive fri16 fri17)
        (consecutive fri17 fri18)
        ;(consecutive fri18 )

        (stessoCorso sistemiDigitali_1 sistemiDigitali_2)
        (stessoCorso sistemiDigitali_1 sistemiDigitali_3)

        (stessoCorso sistemiDigitali_2 sistemiDigitali_1)
        (stessoCorso sistemiDigitali_2 sistemiDigitali_3)

        (stessoCorso sistemiDigitali_3 sistemiDigitali_1)
        (stessoCorso sistemiDigitali_3 sistemiDigitali_2)

        (stessoCorso analisi_1 analisi_2)
        (stessoCorso analisi_1 analisi_3)

        (stessoCorso analisi_2 analisi_1)
        (stessoCorso analisi_2 analisi_3)

        (stessoCorso analisi_3 analisi_1)
        (stessoCorso analisi_3 analisi_2)

        (stessoCorso componenti_1 componenti_2)
        (stessoCorso componenti_1 componenti_3)
        (stessoCorso componenti_1 componenti_4)
        (stessoCorso componenti_1 componenti_5)
        (stessoCorso componenti_1 componenti_6)
        (stessoCorso componenti_1 componenti_7)

        (stessoCorso componenti_2 componenti_1)
        (stessoCorso componenti_2 componenti_3)
        (stessoCorso componenti_2 componenti_4)
        (stessoCorso componenti_2 componenti_5)
        (stessoCorso componenti_2 componenti_6)
        (stessoCorso componenti_2 componenti_7)

        (stessoCorso componenti_3 componenti_1)
        (stessoCorso componenti_3 componenti_2)
        (stessoCorso componenti_3 componenti_4)
        (stessoCorso componenti_3 componenti_5)
        (stessoCorso componenti_3 componenti_6)
        (stessoCorso componenti_3 componenti_7)

        (stessoCorso componenti_4 componenti_1)
        (stessoCorso componenti_4 componenti_2)
        (stessoCorso componenti_4 componenti_3)
        (stessoCorso componenti_4 componenti_5)
        (stessoCorso componenti_4 componenti_6)
        (stessoCorso componenti_4 componenti_7)

        (stessoCorso componenti_5 componenti_1)
        (stessoCorso componenti_5 componenti_2)
        (stessoCorso componenti_5 componenti_3)
        (stessoCorso componenti_5 componenti_4)
        (stessoCorso componenti_5 componenti_6)
        (stessoCorso componenti_5 componenti_7)

        (stessoCorso componenti_6 componenti_1)
        (stessoCorso componenti_6 componenti_2)
        (stessoCorso componenti_6 componenti_3)
        (stessoCorso componenti_6 componenti_4)
        (stessoCorso componenti_6 componenti_5)
        (stessoCorso componenti_6 componenti_7)
        
        (stessoCorso componenti_7 componenti_1)
        (stessoCorso componenti_7 componenti_2)
        (stessoCorso componenti_7 componenti_3)
        (stessoCorso componenti_7 componenti_4)
        (stessoCorso componenti_7 componenti_5)
        (stessoCorso componenti_7 componenti_6)

        (= (total-cost) 0)
        ;(= (treeHeight) 0)
    )

    (:goal (and
        ; (fissato sistemiDigitali)
        ; (fissato analisi)
        ; (fissato componenti)
        ; (fissato sistemiQualita)
        ; (fissato robotica)
        ; (fissato ux)
        ; (fissato cybersecurity)     
        (fissato sistemiDigitali_1)
        (fissato sistemiDigitali_2)
        (fissato sistemiDigitali_3)
        (fissato analisi_1)
        (fissato analisi_2)
        (fissato analisi_3)
        (fissato componenti_1)
        (fissato componenti_2)
        (fissato componenti_3)
        (fissato componenti_4)
        (fissato componenti_5)
        (fissato componenti_6)
        (fissato componenti_7)
    ))

    ;un-comment the following line if metric is needed

    ;total-cost
    (:metric minimize (total-cost))
)
