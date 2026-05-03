(define (problem problemBrandoV5) (:domain domainBrandoV5)
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

        Marcellini
        Bau
        Sisinni - professore

        N6
        N3
        B31 - aula

        ITID1
        ITID3 - scdla
    )

    (:init
        (insegna Sisinni sistemiDigitali_1)
        (insegna Sisinni sistemiDigitali_2)
        (insegna Sisinni sistemiDigitali_3)
        (insegna Marcellini analisi_1)
        (insegna Marcellini analisi_2)
        (insegna Marcellini analisi_3)
        (insegna Bau componenti_1)
        (insegna Bau componenti_2)
        (insegna Bau componenti_3)
        (insegna Bau componenti_4)
        (insegna Bau componenti_5)
        (insegna Bau componenti_6)
        (insegna Bau componenti_7)

        (profDisponibile Sisinni mon08)
        (profDisponibile Sisinni mon09)
        (profDisponibile Sisinni mon10)
        (profDisponibile Sisinni mon11)
        (profDisponibile Sisinni mon12)
        (profDisponibile Sisinni mon13)
        (profDisponibile Sisinni mon14)
        (profDisponibile Sisinni mon15)
        (profDisponibile Sisinni mon16)
        (profDisponibile Sisinni mon17)
        (profDisponibile Sisinni mon18)
        (profDisponibile Marcellini tue08)
        (profDisponibile Marcellini tue09)
        (profDisponibile Marcellini tue10)
        (profDisponibile Marcellini tue11)
        (profDisponibile Marcellini tue12)
        (profDisponibile Marcellini tue13)
        (profDisponibile Marcellini tue14)
        (profDisponibile Marcellini tue15)
        (profDisponibile Marcellini tue16)
        (profDisponibile Marcellini tue17)
        (profDisponibile Marcellini tue18)
        (profDisponibile Bau wed08)
        (profDisponibile Bau wed09)
        (profDisponibile Bau wed10)
        (profDisponibile Bau wed11)
        (profDisponibile Bau wed12)
        (profDisponibile Bau wed13)
        (profDisponibile Bau wed14)
        (profDisponibile Bau wed15)
        (profDisponibile Bau wed16)
        (profDisponibile Bau wed17)
        (profDisponibile Bau wed18)

        (aulaDisponibile B31 mon08)
        (aulaDisponibile B31 mon09)
        (aulaDisponibile B31 mon10)
        ; (aulaDisponibile B31 mon11)
        ; (aulaDisponibile B31 mon12)
        ; (aulaDisponibile B31 mon13)
        ; (aulaDisponibile B31 mon14)
        ; (aulaDisponibile B31 mon15)
        ; (aulaDisponibile B31 mon16)
        ; (aulaDisponibile B31 mon17)
        ; (aulaDisponibile B31 mon18)
        
        ; (aulaDisponibile N6 tue08)
        ; (aulaDisponibile N6 tue09)
        ; (aulaDisponibile N6 tue10)
        ; (aulaDisponibile N6 tue11)
        (aulaDisponibile N6 tue12)
        (aulaDisponibile N6 tue13)
        (aulaDisponibile N6 tue14)
        (aulaDisponibile N6 tue15)
        (aulaDisponibile N6 tue16)
        (aulaDisponibile N6 tue17)
        (aulaDisponibile N6 tue18)

        (aulaDisponibile N3 wed08)
        (aulaDisponibile N3 wed09)
        ; (aulaDisponibile N3 wed10)
        ; (aulaDisponibile N3 wed11)
        ; (aulaDisponibile N3 wed12)
        (aulaDisponibile N3 wed13)
        (aulaDisponibile N3 wed14)
        (aulaDisponibile N3 wed15)
        (aulaDisponibile N3 wed16)
        (aulaDisponibile N3 wed17)
        (aulaDisponibile N3 wed18)

        (frequenta ITID3 sistemiDigitali_1)
        (frequenta ITID3 sistemiDigitali_2)
        (frequenta ITID3 sistemiDigitali_3)
        (frequenta ITID1 analisi_1)
        (frequenta ITID1 analisi_2)
        (frequenta ITID1 analisi_3)
        (frequenta ITID3 componenti_1)
        (frequenta ITID3 componenti_2)
        (frequenta ITID3 componenti_3)
        (frequenta ITID3 componenti_4)
        (frequenta ITID3 componenti_5)
        (frequenta ITID3 componenti_6)
        (frequenta ITID3 componenti_7)

        (scdlaDisponibile ITID3 mon08)
        (scdlaDisponibile ITID3 mon09)
        (scdlaDisponibile ITID3 mon10)
        (scdlaDisponibile ITID3 mon11)
        (scdlaDisponibile ITID3 mon12)
        (scdlaDisponibile ITID3 mon13)
        (scdlaDisponibile ITID3 mon14)
        (scdlaDisponibile ITID3 mon15)
        (scdlaDisponibile ITID3 mon16)
        (scdlaDisponibile ITID3 mon17)
        (scdlaDisponibile ITID3 mon18)
        ; (scdlaDisponibile ITID3 tue08)
        ; (scdlaDisponibile ITID3 tue09)
        ; (scdlaDisponibile ITID3 tue10)
        ; (scdlaDisponibile ITID3 tue11)
        ; (scdlaDisponibile ITID3 tue12)
        (scdlaDisponibile ITID1 tue13)
        (scdlaDisponibile ITID1 tue14)
        (scdlaDisponibile ITID1 tue15)
        (scdlaDisponibile ITID1 tue16)
        ; (scdlaDisponibile ITID3 tue17)
        ; (scdlaDisponibile ITID3 tue18)
        (scdlaDisponibile ITID3 wed08)
        (scdlaDisponibile ITID3 wed09)
        (scdlaDisponibile ITID3 wed10)
        (scdlaDisponibile ITID3 wed11)
        (scdlaDisponibile ITID3 wed12)
        (scdlaDisponibile ITID3 wed13)
        (scdlaDisponibile ITID3 wed14)
        (scdlaDisponibile ITID3 wed15)
        (scdlaDisponibile ITID3 wed16)
        (scdlaDisponibile ITID3 wed17)
        (scdlaDisponibile ITID3 wed18)
        ; (scdlaDisponibile ITID3 thu08)
        ; (scdlaDisponibile ITID3 thu09)
        ; (scdlaDisponibile ITID3 thu10)
        ; (scdlaDisponibile ITID3 thu11)
        ; (scdlaDisponibile ITID3 thu12)
        ; (scdlaDisponibile ITID3 thu13)
        ; (scdlaDisponibile ITID3 thu14)
        ; (scdlaDisponibile ITID3 thu15)
        ; (scdlaDisponibile ITID3 thu16)
        ; (scdlaDisponibile ITID3 thu17)
        ; (scdlaDisponibile ITID3 thu18)
        ; (scdlaDisponibile ITID3 fri08)
        ; (scdlaDisponibile ITID3 fri09)
        (scdlaDisponibile ITID1 fri10)
        (scdlaDisponibile ITID1 fri11)
        (scdlaDisponibile ITID1 fri12)
        (scdlaDisponibile ITID1 fri13)
        ; (scdlaDisponibile ITID3 fri14)
        ; (scdlaDisponibile ITID3 fri15)
        ; (scdlaDisponibile ITID3 fri16)
        ; (scdlaDisponibile ITID3 fri17)
        ; (scdlaDisponibile ITID3 fri18) 


        ; (fasciaOrariaLibera mon08)
        ; (fasciaOrariaLibera mon09)
        ; (fasciaOrariaLibera mon10)
        ; (fasciaOrariaLibera mon11)
        ; (fasciaOrariaLibera mon12)
        ; (fasciaOrariaLibera mon13)
        ; (fasciaOrariaLibera mon14)
        ; (fasciaOrariaLibera mon15)
        ; (fasciaOrariaLibera mon16)
        ; (fasciaOrariaLibera mon17)
        ; (fasciaOrariaLibera mon18)
        ; (fasciaOrariaLibera tue08)
        ; (fasciaOrariaLibera tue09)
        ; (fasciaOrariaLibera tue10)
        ; (fasciaOrariaLibera tue11)
        ; (fasciaOrariaLibera tue12)
        ; (fasciaOrariaLibera tue13)
        ; (fasciaOrariaLibera tue14)
        ; (fasciaOrariaLibera tue15)
        ; (fasciaOrariaLibera tue16)
        ; (fasciaOrariaLibera tue17)
        ; (fasciaOrariaLibera tue18)
        ; (fasciaOrariaLibera wed08)
        ; (fasciaOrariaLibera wed09)
        ; (fasciaOrariaLibera wed10)
        ; (fasciaOrariaLibera wed11)
        ; (fasciaOrariaLibera wed12)
        ; (fasciaOrariaLibera wed13)
        ; (fasciaOrariaLibera wed14)
        ; (fasciaOrariaLibera wed15)
        ; (fasciaOrariaLibera wed16)
        ; (fasciaOrariaLibera wed17)
        ; (fasciaOrariaLibera wed18)
        ; (fasciaOrariaLibera thu08)
        ; (fasciaOrariaLibera thu09)
        ; (fasciaOrariaLibera thu10)
        ; (fasciaOrariaLibera thu11)
        ; (fasciaOrariaLibera thu12)
        ; (fasciaOrariaLibera thu13)
        ; (fasciaOrariaLibera thu14)
        ; (fasciaOrariaLibera thu15)
        ; (fasciaOrariaLibera thu16)
        ; (fasciaOrariaLibera thu17)
        ; (fasciaOrariaLibera thu18)
        ; (fasciaOrariaLibera fri08)
        ; (fasciaOrariaLibera fri09)
        ; (fasciaOrariaLibera fri10)
        ; (fasciaOrariaLibera fri11)
        ; (fasciaOrariaLibera fri12)
        ; (fasciaOrariaLibera fri13)
        ; (fasciaOrariaLibera fri14)
        ; (fasciaOrariaLibera fri15)
        ; (fasciaOrariaLibera fri16)
        ; (fasciaOrariaLibera fri17)
        ; (fasciaOrariaLibera fri18) 

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

        (coppiaFasceOrarie mon08 mon09)
        (coppiaFasceOrarie mon09 mon10)
        (coppiaFasceOrarie mon10 mon11)
        (coppiaFasceOrarie mon11 mon12)
        (coppiaFasceOrarie mon12 mon13)
        (coppiaFasceOrarie mon13 mon14)
        (coppiaFasceOrarie mon14 mon15)
        (coppiaFasceOrarie mon15 mon16)
        (coppiaFasceOrarie mon16 mon17)
        (coppiaFasceOrarie mon17 mon18)

        (coppiaFasceOrarie tue08 tue09)
        (coppiaFasceOrarie tue09 tue10)
        (coppiaFasceOrarie tue10 tue11)
        (coppiaFasceOrarie tue11 tue12)
        (coppiaFasceOrarie tue12 tue13)
        (coppiaFasceOrarie tue13 tue14)
        (coppiaFasceOrarie tue14 tue15)
        (coppiaFasceOrarie tue15 tue16)
        (coppiaFasceOrarie tue16 tue17)
        (coppiaFasceOrarie tue17 tue18)
        
        (coppiaFasceOrarie wed08 wed09)
        (coppiaFasceOrarie wed09 wed10)
        (coppiaFasceOrarie wed10 wed11)
        (coppiaFasceOrarie wed11 wed12)
        (coppiaFasceOrarie wed12 wed13)
        (coppiaFasceOrarie wed13 wed14)
        (coppiaFasceOrarie wed14 wed15)
        (coppiaFasceOrarie wed15 wed16)
        (coppiaFasceOrarie wed16 wed17)
        (coppiaFasceOrarie wed17 wed18)
        
        (coppiaFasceOrarie thu08 thu09)
        (coppiaFasceOrarie thu09 thu10)
        (coppiaFasceOrarie thu10 thu11)
        (coppiaFasceOrarie thu11 thu12)
        (coppiaFasceOrarie thu12 thu13)
        (coppiaFasceOrarie thu13 thu14)
        (coppiaFasceOrarie thu14 thu15)
        (coppiaFasceOrarie thu15 thu16)
        (coppiaFasceOrarie thu16 thu17)
        (coppiaFasceOrarie thu17 thu18)
        
        (coppiaFasceOrarie fri08 fri09)
        (coppiaFasceOrarie fri09 fri10)
        (coppiaFasceOrarie fri10 fri11)
        (coppiaFasceOrarie fri11 fri12)
        (coppiaFasceOrarie fri12 fri13)
        (coppiaFasceOrarie fri13 fri14)
        (coppiaFasceOrarie fri14 fri15)
        (coppiaFasceOrarie fri15 fri16)
        (coppiaFasceOrarie fri16 fri17)
        (coppiaFasceOrarie fri17 fri18)
        

        (coppiaCorsi sistemiDigitali_1 sistemiDigitali_2)
        (coppiaCorsi sistemiDigitali_1 sistemiDigitali_3)
        (coppiaCorsi sistemiDigitali_2 sistemiDigitali_3)

        (coppiaCorsi analisi_1 analisi_2)
        (coppiaCorsi analisi_1 analisi_3)
        (coppiaCorsi analisi_2 analisi_3)

        (coppiaCorsi componenti_1 componenti_2)
        (coppiaCorsi componenti_1 componenti_3)
        (coppiaCorsi componenti_1 componenti_4)
        (coppiaCorsi componenti_1 componenti_5)
        (coppiaCorsi componenti_1 componenti_6)
        (coppiaCorsi componenti_1 componenti_7)

        (coppiaCorsi componenti_2 componenti_3)
        (coppiaCorsi componenti_2 componenti_4)
        (coppiaCorsi componenti_2 componenti_5)
        (coppiaCorsi componenti_2 componenti_6)
        (coppiaCorsi componenti_2 componenti_7)

        (coppiaCorsi componenti_3 componenti_4)
        (coppiaCorsi componenti_3 componenti_5)
        (coppiaCorsi componenti_3 componenti_6)
        (coppiaCorsi componenti_3 componenti_7)

        (coppiaCorsi componenti_4 componenti_5)
        (coppiaCorsi componenti_4 componenti_6)
        (coppiaCorsi componenti_4 componenti_7)

        (coppiaCorsi componenti_5 componenti_6)
        (coppiaCorsi componenti_5 componenti_7)

        (coppiaCorsi componenti_6 componenti_7)
        

        (triadeFasceOrarie mon08 mon09 mon10)
        (triadeFasceOrarie mon09 mon10 mon11)
        (triadeFasceOrarie mon10 mon11 mon12)
        (triadeFasceOrarie mon11 mon12 mon13)
        (triadeFasceOrarie mon12 mon13 mon14)
        (triadeFasceOrarie mon13 mon14 mon15)
        (triadeFasceOrarie mon14 mon15 mon16)
        (triadeFasceOrarie mon15 mon16 mon17)
        (triadeFasceOrarie mon16 mon17 mon18)
        
        (triadeFasceOrarie tue08 tue09 tue10)
        (triadeFasceOrarie tue09 tue10 tue11)
        (triadeFasceOrarie tue10 tue11 tue12)
        (triadeFasceOrarie tue11 tue12 tue13)
        (triadeFasceOrarie tue12 tue13 tue14)
        (triadeFasceOrarie tue13 tue14 tue15)
        (triadeFasceOrarie tue14 tue15 tue16)
        (triadeFasceOrarie tue15 tue16 tue17)
        (triadeFasceOrarie tue16 tue17 tue18)
        
        (triadeFasceOrarie wed08 wed09 wed10)
        (triadeFasceOrarie wed09 wed10 wed11)
        (triadeFasceOrarie wed10 wed11 wed12)
        (triadeFasceOrarie wed11 wed12 wed13)
        (triadeFasceOrarie wed12 wed13 wed14)
        (triadeFasceOrarie wed13 wed14 wed15)
        (triadeFasceOrarie wed14 wed15 wed16)
        (triadeFasceOrarie wed15 wed16 wed17)
        (triadeFasceOrarie wed16 wed17 wed18)
        
        (triadeFasceOrarie thu08 thu09 thu10)
        (triadeFasceOrarie thu09 thu10 thu11)
        (triadeFasceOrarie thu10 thu11 thu12)
        (triadeFasceOrarie thu11 thu12 thu13)
        (triadeFasceOrarie thu12 thu13 thu14)
        (triadeFasceOrarie thu13 thu14 thu15)
        (triadeFasceOrarie thu14 thu15 thu16)
        (triadeFasceOrarie thu15 thu16 thu17)
        (triadeFasceOrarie thu16 thu17 thu18)
        
        (triadeFasceOrarie fri08 fri09 fri10)
        (triadeFasceOrarie fri09 fri10 fri11)
        (triadeFasceOrarie fri10 fri11 fri12)
        (triadeFasceOrarie fri11 fri12 fri13)
        (triadeFasceOrarie fri12 fri13 fri14)
        (triadeFasceOrarie fri13 fri14 fri15)
        (triadeFasceOrarie fri14 fri15 fri16)
        (triadeFasceOrarie fri15 fri16 fri17)
        (triadeFasceOrarie fri16 fri17 fri18)
         
        
        (triadeCorsi sistemiDigitali_1 sistemiDigitali_2 sistemiDigitali_3)
        ; (triadeCorsi sistemiDigitali_1 sistemiDigitali_3 sistemiDigitali_2)
        ; (triadeCorsi sistemiDigitali_2 sistemiDigitali_1 sistemiDigitali_3)
        ; (triadeCorsi sistemiDigitali_2 sistemiDigitali_3 sistemiDigitali_1)
        ; (triadeCorsi sistemiDigitali_3 sistemiDigitali_1 sistemiDigitali_2)
        ; (triadeCorsi sistemiDigitali_3 sistemiDigitali_2 sistemiDigitali_1)

        (triadeCorsi analisi_1 analisi_2 analisi_3)
        ; (triadeCorsi analisi_1 analisi_3 analisi_2)
        ; (triadeCorsi analisi_2 analisi_1 analisi_3)
        ; (triadeCorsi analisi_2 analisi_3 analisi_1)
        ; (triadeCorsi analisi_3 analisi_1 analisi_2)
        ; (triadeCorsi analisi_3 analisi_2 analisi_1)


        (triadeCorsi componenti_1 componenti_2 componenti_3)
        (triadeCorsi componenti_1 componenti_2 componenti_4)
        (triadeCorsi componenti_1 componenti_2 componenti_5)
        (triadeCorsi componenti_1 componenti_2 componenti_6)
        (triadeCorsi componenti_1 componenti_2 componenti_7)
        (triadeCorsi componenti_1 componenti_3 componenti_4)
        (triadeCorsi componenti_1 componenti_3 componenti_5)
        (triadeCorsi componenti_1 componenti_3 componenti_6)
        (triadeCorsi componenti_1 componenti_3 componenti_7)
        (triadeCorsi componenti_1 componenti_4 componenti_5)
        (triadeCorsi componenti_1 componenti_4 componenti_6)
        (triadeCorsi componenti_1 componenti_4 componenti_7)
        (triadeCorsi componenti_1 componenti_5 componenti_6)
        (triadeCorsi componenti_1 componenti_5 componenti_7)
        (triadeCorsi componenti_1 componenti_6 componenti_7)
        (triadeCorsi componenti_2 componenti_3 componenti_4)
        (triadeCorsi componenti_2 componenti_3 componenti_5)
        (triadeCorsi componenti_2 componenti_3 componenti_6)
        (triadeCorsi componenti_2 componenti_3 componenti_7)
        (triadeCorsi componenti_2 componenti_4 componenti_5)
        (triadeCorsi componenti_2 componenti_4 componenti_6)
        (triadeCorsi componenti_2 componenti_4 componenti_7)
        (triadeCorsi componenti_2 componenti_5 componenti_6)
        (triadeCorsi componenti_2 componenti_5 componenti_7)
        (triadeCorsi componenti_2 componenti_6 componenti_7)
        (triadeCorsi componenti_3 componenti_4 componenti_5)
        (triadeCorsi componenti_3 componenti_4 componenti_6)
        (triadeCorsi componenti_3 componenti_4 componenti_7)
        (triadeCorsi componenti_3 componenti_5 componenti_6)
        (triadeCorsi componenti_3 componenti_5 componenti_7)
        (triadeCorsi componenti_3 componenti_6 componenti_7)
        (triadeCorsi componenti_4 componenti_5 componenti_6)
        (triadeCorsi componenti_4 componenti_5 componenti_7)
        (triadeCorsi componenti_4 componenti_6 componenti_7)
        (triadeCorsi componenti_5 componenti_6 componenti_7)

        (quartettoFasceOrarie mon08 mon09 mon10 mon11)
        (quartettoFasceOrarie mon09 mon10 mon11 mon12)
        (quartettoFasceOrarie mon10 mon11 mon12 mon13)
        (quartettoFasceOrarie mon11 mon12 mon13 mon14)
        (quartettoFasceOrarie mon12 mon13 mon14 mon15)
        (quartettoFasceOrarie mon13 mon14 mon15 mon16)
        (quartettoFasceOrarie mon14 mon15 mon16 mon17)
        (quartettoFasceOrarie mon15 mon16 mon17 mon18)

        (quartettoFasceOrarie tue08 tue09 tue10 tue11)
        (quartettoFasceOrarie tue09 tue10 tue11 tue12)
        (quartettoFasceOrarie tue10 tue11 tue12 tue13)
        (quartettoFasceOrarie tue11 tue12 tue13 tue14)
        (quartettoFasceOrarie tue12 tue13 tue14 tue15)
        (quartettoFasceOrarie tue13 tue14 tue15 tue16)
        (quartettoFasceOrarie tue14 tue15 tue16 tue17)
        (quartettoFasceOrarie tue15 tue16 tue17 tue18)

        (quartettoFasceOrarie wed08 wed09 wed10 wed11)
        (quartettoFasceOrarie wed09 wed10 wed11 wed12)
        (quartettoFasceOrarie wed10 wed11 wed12 wed13)
        (quartettoFasceOrarie wed11 wed12 wed13 wed14)
        (quartettoFasceOrarie wed12 wed13 wed14 wed15)
        (quartettoFasceOrarie wed13 wed14 wed15 wed16)
        (quartettoFasceOrarie wed14 wed15 wed16 wed17)
        (quartettoFasceOrarie wed15 wed16 wed17 wed18)

        (quartettoFasceOrarie thu08 thu09 thu10 thu11)
        (quartettoFasceOrarie thu09 thu10 thu11 thu12)
        (quartettoFasceOrarie thu10 thu11 thu12 thu13)
        (quartettoFasceOrarie thu11 thu12 thu13 thu14)
        (quartettoFasceOrarie thu12 thu13 thu14 thu15)
        (quartettoFasceOrarie thu13 thu14 thu15 thu16)
        (quartettoFasceOrarie thu14 thu15 thu16 thu17)
        (quartettoFasceOrarie thu15 thu16 thu17 thu18)
  
        (quartettoFasceOrarie fri08 fri09 fri10 fri11)
        (quartettoFasceOrarie fri09 fri10 fri11 fri12)
        (quartettoFasceOrarie fri10 fri11 fri12 fri13)
        (quartettoFasceOrarie fri11 fri12 fri13 fri14)
        (quartettoFasceOrarie fri12 fri13 fri14 fri15)
        (quartettoFasceOrarie fri13 fri14 fri15 fri16)
        (quartettoFasceOrarie fri14 fri15 fri16 fri17)
        (quartettoFasceOrarie fri15 fri16 fri17 fri18)

        (quartettoCorsi componenti_1 componenti_2 componenti_3 componenti_4)
        (quartettoCorsi componenti_1 componenti_2 componenti_3 componenti_5)
        (quartettoCorsi componenti_1 componenti_2 componenti_3 componenti_6)
        (quartettoCorsi componenti_1 componenti_2 componenti_3 componenti_7)
        (quartettoCorsi componenti_1 componenti_2 componenti_4 componenti_5)
        (quartettoCorsi componenti_1 componenti_2 componenti_4 componenti_6)
        (quartettoCorsi componenti_1 componenti_2 componenti_4 componenti_7)
        (quartettoCorsi componenti_1 componenti_2 componenti_5 componenti_6)
        (quartettoCorsi componenti_1 componenti_2 componenti_5 componenti_7)
        (quartettoCorsi componenti_1 componenti_2 componenti_6 componenti_7)
        (quartettoCorsi componenti_1 componenti_3 componenti_4 componenti_5)
        (quartettoCorsi componenti_1 componenti_3 componenti_4 componenti_6)
        (quartettoCorsi componenti_1 componenti_3 componenti_4 componenti_7)
        (quartettoCorsi componenti_1 componenti_3 componenti_5 componenti_6)
        (quartettoCorsi componenti_1 componenti_3 componenti_5 componenti_7)
        (quartettoCorsi componenti_1 componenti_3 componenti_6 componenti_7)
        (quartettoCorsi componenti_1 componenti_4 componenti_5 componenti_6)
        (quartettoCorsi componenti_1 componenti_4 componenti_5 componenti_7)
        (quartettoCorsi componenti_1 componenti_4 componenti_6 componenti_7)
        (quartettoCorsi componenti_1 componenti_5 componenti_6 componenti_7)
        (quartettoCorsi componenti_2 componenti_3 componenti_4 componenti_5)
        (quartettoCorsi componenti_2 componenti_3 componenti_4 componenti_6)
        (quartettoCorsi componenti_2 componenti_3 componenti_4 componenti_7)
        (quartettoCorsi componenti_2 componenti_3 componenti_5 componenti_6)
        (quartettoCorsi componenti_2 componenti_3 componenti_5 componenti_7)
        (quartettoCorsi componenti_2 componenti_3 componenti_6 componenti_7)
        (quartettoCorsi componenti_2 componenti_4 componenti_5 componenti_6)
        (quartettoCorsi componenti_2 componenti_4 componenti_5 componenti_7)
        (quartettoCorsi componenti_2 componenti_4 componenti_6 componenti_7)
        (quartettoCorsi componenti_2 componenti_5 componenti_6 componenti_7)
        (quartettoCorsi componenti_3 componenti_4 componenti_5 componenti_6)
        (quartettoCorsi componenti_3 componenti_4 componenti_5 componenti_7)
        (quartettoCorsi componenti_3 componenti_4 componenti_6 componenti_7)
        (quartettoCorsi componenti_3 componenti_5 componenti_6 componenti_7)
        (quartettoCorsi componenti_4 componenti_5 componenti_6 componenti_7)

        
        (= (total-cost) 0)
    )

    (:goal (and    
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
