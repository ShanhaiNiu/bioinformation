MPprimer-1.4 [Jun 10, 2010]

Zhiyong Shen*, Wubin Qu*, Wen Wang, Yiming Lu, Yonghong Wu, Zhifeng Li, Xingyi Hang, 
Xiaolei Wang, Dongsheng Zhao, Chenggang Zhang. MPprimer: a program for reliable 
multiplex PCR primer design. BMC Bioinformatics, 2010, 11:143. (Join first author)


****************************************************************************************************
Template sequence (4)
    Template 1: Mus_AQP11
    Template 2: Mus_AQP12
    Template 3: Mus_AQP6
    Template 4: Mus_AQP2

PSC (Primer Set Combination): 15
Database used for specificity checking: None
MinBS: 2mm
MFEprimer performance: Word size 11, E-value 1000
Total time used: 0 m 2 s
****************************************************************************************************

Short description of 15 PSCs (Primer Set Combinations) sorted by the mean penalty of the primer set combinations

PSC    Size distribution (bp)               Tm distribution (°C)                  Mean penalty  

1       [141, 240, 335, 432]     [59.9/60.1, 59.9/59.7, 59.7/59.9, 60.0/59.8]    0.3266 ± 0.1033
2       [141, 235, 335, 432]     [59.9/60.1, 59.9/60.4, 59.7/59.9, 60.0/59.8]    0.3319 ± 0.1104
3       [138, 240, 335, 432]     [60.2/60.1, 59.9/59.7, 59.7/59.9, 60.0/59.8]    0.3372 ± 0.0943
4       [141, 240, 315, 432]     [59.9/60.1, 59.9/59.7, 59.7/60.3, 60.0/59.8]    0.3848 ± 0.1912
5       [138, 235, 315, 449]     [60.2/60.1, 59.9/60.4, 59.7/60.3, 59.9/59.8]    0.4172 ± 0.1647
6       [138, 243, 315, 449]     [60.2/60.1, 59.9/60.3, 59.7/60.3, 59.9/59.8]    0.4177 ± 0.1648
7       [82, 235, 315, 449]      [59.9/60.2, 59.9/60.4, 59.7/60.3, 59.9/59.8]    0.4251 ± 0.1572
8       [82, 181, 266, 449]      [59.9/60.2, 59.6/59.9, 60.0/59.3, 59.9/59.8]    0.4408 ± 0.1772
9       [82, 181, 266, 420]      [59.9/60.2, 59.6/59.9, 60.0/59.3, 60.1/59.8]    0.4489 ± 0.1687
10      [82, 181, 261, 420]      [59.9/60.2, 59.6/59.9, 59.9/59.3, 60.1/59.8]    0.4655 ± 0.1994
11      [84, 181, 261, 420]      [59.7/60.0, 59.6/59.9, 59.9/59.3, 60.1/59.8]    0.4723 ± 0.1932
12      [84, 181, 261, 442]      [59.7/60.0, 59.6/59.9, 59.9/59.3, 59.9/59.8]    0.4811 ± 0.1849
13      [84, 181, 313, 420]      [59.7/60.0, 59.6/59.9, 59.3/59.9, 60.1/59.8]    0.4857 ± 0.2186
14      [84, 194, 261, 420]      [59.7/60.0, 60.5/59.9, 59.9/59.3, 60.1/59.8]    0.4984 ± 0.1993
15      [84, 194, 261, 442]      [59.7/60.0, 60.5/59.9, 59.9/59.3, 59.9/59.8]    0.5072 ± 0.1897



Details of the 15 PSCs sorted by the mean penalty of the primer set combinations


****************************************************************************************************

PSC 1: Mean penalty: 0.3266 ± 0.1033, Mean Tm: 59.9 ± 0.1 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_0    0.2478        141       59.9 / 60.1    5'-TGCTGCTGTTCGTGCTGTTCGT-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_0    0.4251        240       59.9 / 59.7    5'-TGCACACTGCAGCTCAACCCTG-3' / 5'-AAGGTGTTCCCAGGGCAGTGGA-3'
T3: Mus_AQP6_0     0.4059        335       59.7 / 59.9    5'-GCCACGGGGCTGTACGTTTTCT-3' / 5'-GCCTGGCCAGTTGATGTGCTGT-3'
T4: Mus_AQP2_0     0.2275        432       60.0 / 59.8    5'-TCGAGCTGCCTTCTACGTGGCT-3' / 5'-TTGGTCGAGGGGAACAGCAGGT-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_0_fp + Mus_AQP11_0_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 141 bp, GC content = 63.1%
           FP: 3'ΔG = -2.5(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 62(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_0_fp
            1                    22
         5' TGCTGCTGTTCGTGCTGTTCGT 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGCTGTTCGTGCTGTTCGTggggctggcccgc...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            62                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_0_rp<<<
         

         >12_Mus_AQP11_0_fp_Mus_AQP11_0_rp_T_1_Mus_AQP11 
         TGCTGCTGTTCGTGCTGTTCGTggggctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgc
         cttcgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_0_fp + Mus_AQP12_0_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 240 bp, GC content = 60.0%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.7 (°C)
           Binding sites: 444(22/22) ... 683(22/22)
         
         >>>Mus_AQP12_0_fp
            1                    22
         5' TGCACACTGCAGCTCAACCCTG 3'
            ||||||||||||||||||||||                                                  683
         5' TGCACACTGCAGCTCAACCCTGcgtacatccgtgc...gcctctgtcacatTCCACTGCCCTGGGAACACCTT 3'
            444                                                ||||||||||||||||||||||
                                                            3' TCCACTGCCCTGGGAACACCTT 5'
                                                               22                   1
                                                                        Mus_AQP12_0_rp<<<
         

         >28_Mus_AQP12_0_fp_Mus_AQP12_0_rp_T_2_Mus_AQP12 
         TGCACACTGCAGCTCAACCCTGcgtacatccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttc
         catctgagcctcctccacctgcagcacagccttcttgtctacagggtgcctgccctggccctgctggtcactctca
         tggcctacacagcagggccctacacatctgccttcttcaatcctgccctggctgcctctgtcacatTCCACTGCCC
         TGGGAACACCTT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_0_fp + Mus_AQP6_0_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 335 bp, GC content = 61.5%
           FP: 3'ΔG = -1.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 88(22/22) ... 422(22/22)
         
         >>>Mus_AQP6_0_fp
            1                    22
         5' GCCACGGGGCTGTACGTTTTCT 3'
            ||||||||||||||||||||||                                                  422
         5' GCCACGGGGCTGTACGTTTTCTttggtgtgggctc...aacgtggtccacaACAGCACATCAACTGGCCAGGC 3'
            88                                                 ||||||||||||||||||||||
                                                            3' ACAGCACATCAACTGGCCAGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_0_rp<<<
         

         >46_Mus_AQP6_0_fp_Mus_AQP6_0_rp_T_3_Mus_AQP6 
         GCCACGGGGCTGTACGTTTTCTttggtgtgggctctgttctgccctggcctgtggcgcttccctctgtgctccaga
         tcgccatcaccttcaatctggccacagccacagccgtgcagatctcctggaagaccagcggggcccacgccaaccc
         tgctgtgaccctggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctg
         gctggggccacagctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacg
         tggtccacaACAGCACATCAACTGGCCAGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_0_fp + Mus_AQP2_0_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 432 bp, GC content = 60.2%
           FP: 3'ΔG = -3.4(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 252(22/22) ... 683(22/22)
         
         >>>Mus_AQP2_0_fp
            1                    22
         5' TCGAGCTGCCTTCTACGTGGCT 3'
            ||||||||||||||||||||||                                                  683
         5' TCGAGCTGCCTTCTACGTGGCTgcccagctgctgg...ctcctctacaactACCTGCTGTTCCCCTCGACCAA 3'
            252                                                ||||||||||||||||||||||
                                                            3' ACCTGCTGTTCCCCTCGACCAA 5'
                                                               22                   1
                                                                         Mus_AQP2_0_rp<<<
         

         >61_Mus_AQP2_0_fp_Mus_AQP2_0_rp_T_4_Mus_AQP2 
         TCGAGCTGCCTTCTACGTGGCTgcccagctgctgggggccgtggccggggccgccatcctccatgagattacccct
         gtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcggtgactgtggagc
         tcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaacctgggtagccc
         tgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgctccatgaatcca
         gcccgctccctggctccagcagttgtcactggcaagtttgatgatcactgggtcttctggatcggacccctggtgg
         gcgccgtcatcggttccctcctctacaactACCTGCTGTTCCCCTCGACCAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 2: Mean penalty: 0.3319 ± 0.1104, Mean Tm: 60.0 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_0    0.2478        141       59.9 / 60.1    5'-TGCTGCTGTTCGTGCTGTTCGT-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_1    0.4463        235       59.9 / 60.4    5'-CGCTGCCCAACACTCTGCTGAA-3' / 5'-AGAAGGCTGTGCTGCAGGTGGA-3'
T3: Mus_AQP6_0     0.4059        335       59.7 / 59.9    5'-GCCACGGGGCTGTACGTTTTCT-3' / 5'-GCCTGGCCAGTTGATGTGCTGT-3'
T4: Mus_AQP2_0     0.2275        432       60.0 / 59.8    5'-TCGAGCTGCCTTCTACGTGGCT-3' / 5'-TTGGTCGAGGGGAACAGCAGGT-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_0_fp + Mus_AQP11_0_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 141 bp, GC content = 63.1%
           FP: 3'ΔG = -2.5(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 62(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_0_fp
            1                    22
         5' TGCTGCTGTTCGTGCTGTTCGT 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGCTGTTCGTGCTGTTCGTggggctggcccgc...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            62                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_0_rp<<<
         

         >12_Mus_AQP11_0_fp_Mus_AQP11_0_rp_T_1_Mus_AQP11 
         TGCTGCTGTTCGTGCTGTTCGTggggctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgc
         cttcgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_1_fp + Mus_AQP12_1_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 235 bp, GC content = 62.1%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 60.4 (°C)
           Binding sites: 320(22/22) ... 554(22/22)
         
         >>>Mus_AQP12_1_fp
            1                    22
         5' CGCTGCCCAACACTCTGCTGAA 3'
            ||||||||||||||||||||||                                                  554
         5' CGCTGCCCAACACTCTGCTGAAactgtcggcccag...catctgagcctccTCCACCTGCAGCACAGCCTTCT 3'
            320                                                ||||||||||||||||||||||
                                                            3' TCCACCTGCAGCACAGCCTTCT 5'
                                                               22                   1
                                                                        Mus_AQP12_1_rp<<<
         

         >27_Mus_AQP12_1_fp_Mus_AQP12_1_rp_T_2_Mus_AQP12 
         CGCTGCCCAACACTCTGCTGAAactgtcggcccaggtgctgggtgcacaggctgcctgtgccctgacccagcgctg
         ctgggcctgggagctcagcgaactacacttactacagagcctcatggctgcacactgcagctcaaccctgcgtaca
         tccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttccatctgagcctccTCCACCTGCAGCACA
         GCCTTCT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_0_fp + Mus_AQP6_0_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 335 bp, GC content = 61.5%
           FP: 3'ΔG = -1.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 88(22/22) ... 422(22/22)
         
         >>>Mus_AQP6_0_fp
            1                    22
         5' GCCACGGGGCTGTACGTTTTCT 3'
            ||||||||||||||||||||||                                                  422
         5' GCCACGGGGCTGTACGTTTTCTttggtgtgggctc...aacgtggtccacaACAGCACATCAACTGGCCAGGC 3'
            88                                                 ||||||||||||||||||||||
                                                            3' ACAGCACATCAACTGGCCAGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_0_rp<<<
         

         >46_Mus_AQP6_0_fp_Mus_AQP6_0_rp_T_3_Mus_AQP6 
         GCCACGGGGCTGTACGTTTTCTttggtgtgggctctgttctgccctggcctgtggcgcttccctctgtgctccaga
         tcgccatcaccttcaatctggccacagccacagccgtgcagatctcctggaagaccagcggggcccacgccaaccc
         tgctgtgaccctggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctg
         gctggggccacagctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacg
         tggtccacaACAGCACATCAACTGGCCAGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_0_fp + Mus_AQP2_0_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 432 bp, GC content = 60.2%
           FP: 3'ΔG = -3.4(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 252(22/22) ... 683(22/22)
         
         >>>Mus_AQP2_0_fp
            1                    22
         5' TCGAGCTGCCTTCTACGTGGCT 3'
            ||||||||||||||||||||||                                                  683
         5' TCGAGCTGCCTTCTACGTGGCTgcccagctgctgg...ctcctctacaactACCTGCTGTTCCCCTCGACCAA 3'
            252                                                ||||||||||||||||||||||
                                                            3' ACCTGCTGTTCCCCTCGACCAA 5'
                                                               22                   1
                                                                         Mus_AQP2_0_rp<<<
         

         >61_Mus_AQP2_0_fp_Mus_AQP2_0_rp_T_4_Mus_AQP2 
         TCGAGCTGCCTTCTACGTGGCTgcccagctgctgggggccgtggccggggccgccatcctccatgagattacccct
         gtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcggtgactgtggagc
         tcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaacctgggtagccc
         tgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgctccatgaatcca
         gcccgctccctggctccagcagttgtcactggcaagtttgatgatcactgggtcttctggatcggacccctggtgg
         gcgccgtcatcggttccctcctctacaactACCTGCTGTTCCCCTCGACCAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 3: Mean penalty: 0.3372 ± 0.0943, Mean Tm: 59.9 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_1    0.2902        138       60.2 / 60.1    5'-TGCTGTTCGTGCTGTTCGTGGG-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_0    0.4251        240       59.9 / 59.7    5'-TGCACACTGCAGCTCAACCCTG-3' / 5'-AAGGTGTTCCCAGGGCAGTGGA-3'
T3: Mus_AQP6_0     0.4059        335       59.7 / 59.9    5'-GCCACGGGGCTGTACGTTTTCT-3' / 5'-GCCTGGCCAGTTGATGTGCTGT-3'
T4: Mus_AQP2_0     0.2275        432       60.0 / 59.8    5'-TCGAGCTGCCTTCTACGTGGCT-3' / 5'-TTGGTCGAGGGGAACAGCAGGT-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_1_fp + Mus_AQP11_1_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 138 bp, GC content = 63.0%
           FP: 3'ΔG = -3.3(kcal/mol), Tm = 60.2 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 65(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_1_fp
            1                    22
         5' TGCTGTTCGTGCTGTTCGTGGG 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtg...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            65                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_1_rp<<<
         

         >9_Mus_AQP11_1_fp_Mus_AQP11_1_rp_T_1_Mus_AQP11 
         TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgcctt
         cgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_0_fp + Mus_AQP12_0_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 240 bp, GC content = 60.0%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.7 (°C)
           Binding sites: 444(22/22) ... 683(22/22)
         
         >>>Mus_AQP12_0_fp
            1                    22
         5' TGCACACTGCAGCTCAACCCTG 3'
            ||||||||||||||||||||||                                                  683
         5' TGCACACTGCAGCTCAACCCTGcgtacatccgtgc...gcctctgtcacatTCCACTGCCCTGGGAACACCTT 3'
            444                                                ||||||||||||||||||||||
                                                            3' TCCACTGCCCTGGGAACACCTT 5'
                                                               22                   1
                                                                        Mus_AQP12_0_rp<<<
         

         >28_Mus_AQP12_0_fp_Mus_AQP12_0_rp_T_2_Mus_AQP12 
         TGCACACTGCAGCTCAACCCTGcgtacatccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttc
         catctgagcctcctccacctgcagcacagccttcttgtctacagggtgcctgccctggccctgctggtcactctca
         tggcctacacagcagggccctacacatctgccttcttcaatcctgccctggctgcctctgtcacatTCCACTGCCC
         TGGGAACACCTT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_0_fp + Mus_AQP6_0_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 335 bp, GC content = 61.5%
           FP: 3'ΔG = -1.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 88(22/22) ... 422(22/22)
         
         >>>Mus_AQP6_0_fp
            1                    22
         5' GCCACGGGGCTGTACGTTTTCT 3'
            ||||||||||||||||||||||                                                  422
         5' GCCACGGGGCTGTACGTTTTCTttggtgtgggctc...aacgtggtccacaACAGCACATCAACTGGCCAGGC 3'
            88                                                 ||||||||||||||||||||||
                                                            3' ACAGCACATCAACTGGCCAGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_0_rp<<<
         

         >46_Mus_AQP6_0_fp_Mus_AQP6_0_rp_T_3_Mus_AQP6 
         GCCACGGGGCTGTACGTTTTCTttggtgtgggctctgttctgccctggcctgtggcgcttccctctgtgctccaga
         tcgccatcaccttcaatctggccacagccacagccgtgcagatctcctggaagaccagcggggcccacgccaaccc
         tgctgtgaccctggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctg
         gctggggccacagctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacg
         tggtccacaACAGCACATCAACTGGCCAGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_0_fp + Mus_AQP2_0_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 432 bp, GC content = 60.2%
           FP: 3'ΔG = -3.4(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 252(22/22) ... 683(22/22)
         
         >>>Mus_AQP2_0_fp
            1                    22
         5' TCGAGCTGCCTTCTACGTGGCT 3'
            ||||||||||||||||||||||                                                  683
         5' TCGAGCTGCCTTCTACGTGGCTgcccagctgctgg...ctcctctacaactACCTGCTGTTCCCCTCGACCAA 3'
            252                                                ||||||||||||||||||||||
                                                            3' ACCTGCTGTTCCCCTCGACCAA 5'
                                                               22                   1
                                                                         Mus_AQP2_0_rp<<<
         

         >61_Mus_AQP2_0_fp_Mus_AQP2_0_rp_T_4_Mus_AQP2 
         TCGAGCTGCCTTCTACGTGGCTgcccagctgctgggggccgtggccggggccgccatcctccatgagattacccct
         gtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcggtgactgtggagc
         tcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaacctgggtagccc
         tgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgctccatgaatcca
         gcccgctccctggctccagcagttgtcactggcaagtttgatgatcactgggtcttctggatcggacccctggtgg
         gcgccgtcatcggttccctcctctacaactACCTGCTGTTCCCCTCGACCAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 4: Mean penalty: 0.3848 ± 0.1912, Mean Tm: 59.9 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_0    0.2478        141       59.9 / 60.1    5'-TGCTGCTGTTCGTGCTGTTCGT-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_0    0.4251        240       59.9 / 59.7    5'-TGCACACTGCAGCTCAACCCTG-3' / 5'-AAGGTGTTCCCAGGGCAGTGGA-3'
T3: Mus_AQP6_1     0.6388        315       59.7 / 60.3    5'-TCAATCTGGCCACAGCCACAGC-3' / 5'-GCCGGCCATCCATGGAAGCAAA-3'
T4: Mus_AQP2_0     0.2275        432       60.0 / 59.8    5'-TCGAGCTGCCTTCTACGTGGCT-3' / 5'-TTGGTCGAGGGGAACAGCAGGT-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_0_fp + Mus_AQP11_0_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 141 bp, GC content = 63.1%
           FP: 3'ΔG = -2.5(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 62(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_0_fp
            1                    22
         5' TGCTGCTGTTCGTGCTGTTCGT 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGCTGTTCGTGCTGTTCGTggggctggcccgc...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            62                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_0_rp<<<
         

         >12_Mus_AQP11_0_fp_Mus_AQP11_0_rp_T_1_Mus_AQP11 
         TGCTGCTGTTCGTGCTGTTCGTggggctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgc
         cttcgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_0_fp + Mus_AQP12_0_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 240 bp, GC content = 60.0%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.7 (°C)
           Binding sites: 444(22/22) ... 683(22/22)
         
         >>>Mus_AQP12_0_fp
            1                    22
         5' TGCACACTGCAGCTCAACCCTG 3'
            ||||||||||||||||||||||                                                  683
         5' TGCACACTGCAGCTCAACCCTGcgtacatccgtgc...gcctctgtcacatTCCACTGCCCTGGGAACACCTT 3'
            444                                                ||||||||||||||||||||||
                                                            3' TCCACTGCCCTGGGAACACCTT 5'
                                                               22                   1
                                                                        Mus_AQP12_0_rp<<<
         

         >28_Mus_AQP12_0_fp_Mus_AQP12_0_rp_T_2_Mus_AQP12 
         TGCACACTGCAGCTCAACCCTGcgtacatccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttc
         catctgagcctcctccacctgcagcacagccttcttgtctacagggtgcctgccctggccctgctggtcactctca
         tggcctacacagcagggccctacacatctgccttcttcaatcctgccctggctgcctctgtcacatTCCACTGCCC
         TGGGAACACCTT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_1_fp + Mus_AQP6_1_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 315 bp, GC content = 61.9%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -2.4(kcal/mol), Tm = 60.3 (°C)
           Binding sites: 176(22/22) ... 490(22/22)
         
         >>>Mus_AQP6_1_fp
            1                    22
         5' TCAATCTGGCCACAGCCACAGC 3'
            ||||||||||||||||||||||                                                  490
         5' TCAATCTGGCCACAGCCACAGCcgtgcagatctcc...ggtgctctgtgtcTTTGCTTCCATGGATGGCCGGC 3'
            176                                                ||||||||||||||||||||||
                                                            3' TTTGCTTCCATGGATGGCCGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_1_rp<<<
         

         >42_Mus_AQP6_1_fp_Mus_AQP6_1_rp_T_3_Mus_AQP6 
         TCAATCTGGCCACAGCCACAGCcgtgcagatctcctggaagaccagcggggcccacgccaaccctgctgtgaccct
         ggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctggctggggccaca
         gctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacgtggtccacaaca
         gcacatcaactggccaggcggtggccgtggagctggttctgacgctgcagctggtgctctgtgtcTTTGCTTCCAT
         GGATGGCCGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_0_fp + Mus_AQP2_0_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 432 bp, GC content = 60.2%
           FP: 3'ΔG = -3.4(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 252(22/22) ... 683(22/22)
         
         >>>Mus_AQP2_0_fp
            1                    22
         5' TCGAGCTGCCTTCTACGTGGCT 3'
            ||||||||||||||||||||||                                                  683
         5' TCGAGCTGCCTTCTACGTGGCTgcccagctgctgg...ctcctctacaactACCTGCTGTTCCCCTCGACCAA 3'
            252                                                ||||||||||||||||||||||
                                                            3' ACCTGCTGTTCCCCTCGACCAA 5'
                                                               22                   1
                                                                         Mus_AQP2_0_rp<<<
         

         >61_Mus_AQP2_0_fp_Mus_AQP2_0_rp_T_4_Mus_AQP2 
         TCGAGCTGCCTTCTACGTGGCTgcccagctgctgggggccgtggccggggccgccatcctccatgagattacccct
         gtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcggtgactgtggagc
         tcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaacctgggtagccc
         tgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgctccatgaatcca
         gcccgctccctggctccagcagttgtcactggcaagtttgatgatcactgggtcttctggatcggacccctggtgg
         gcgccgtcatcggttccctcctctacaactACCTGCTGTTCCCCTCGACCAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 5: Mean penalty: 0.4172 ± 0.1647, Mean Tm: 60.0 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_1    0.2902        138       60.2 / 60.1    5'-TGCTGTTCGTGCTGTTCGTGGG-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_1    0.4463        235       59.9 / 60.4    5'-CGCTGCCCAACACTCTGCTGAA-3' / 5'-AGAAGGCTGTGCTGCAGGTGGA-3'
T3: Mus_AQP6_1     0.6388        315       59.7 / 60.3    5'-TCAATCTGGCCACAGCCACAGC-3' / 5'-GCCGGCCATCCATGGAAGCAAA-3'
T4: Mus_AQP2_2     0.2936        449       59.9 / 59.8    5'-CGTGGCCTTTGGTCTGGGCATT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_1_fp + Mus_AQP11_1_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 138 bp, GC content = 63.0%
           FP: 3'ΔG = -3.3(kcal/mol), Tm = 60.2 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 65(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_1_fp
            1                    22
         5' TGCTGTTCGTGCTGTTCGTGGG 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtg...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            65                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_1_rp<<<
         

         >9_Mus_AQP11_1_fp_Mus_AQP11_1_rp_T_1_Mus_AQP11 
         TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgcctt
         cgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_1_fp + Mus_AQP12_1_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 235 bp, GC content = 62.1%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 60.4 (°C)
           Binding sites: 320(22/22) ... 554(22/22)
         
         >>>Mus_AQP12_1_fp
            1                    22
         5' CGCTGCCCAACACTCTGCTGAA 3'
            ||||||||||||||||||||||                                                  554
         5' CGCTGCCCAACACTCTGCTGAAactgtcggcccag...catctgagcctccTCCACCTGCAGCACAGCCTTCT 3'
            320                                                ||||||||||||||||||||||
                                                            3' TCCACCTGCAGCACAGCCTTCT 5'
                                                               22                   1
                                                                        Mus_AQP12_1_rp<<<
         

         >27_Mus_AQP12_1_fp_Mus_AQP12_1_rp_T_2_Mus_AQP12 
         CGCTGCCCAACACTCTGCTGAAactgtcggcccaggtgctgggtgcacaggctgcctgtgccctgacccagcgctg
         ctgggcctgggagctcagcgaactacacttactacagagcctcatggctgcacactgcagctcaaccctgcgtaca
         tccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttccatctgagcctccTCCACCTGCAGCACA
         GCCTTCT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_1_fp + Mus_AQP6_1_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 315 bp, GC content = 61.9%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -2.4(kcal/mol), Tm = 60.3 (°C)
           Binding sites: 176(22/22) ... 490(22/22)
         
         >>>Mus_AQP6_1_fp
            1                    22
         5' TCAATCTGGCCACAGCCACAGC 3'
            ||||||||||||||||||||||                                                  490
         5' TCAATCTGGCCACAGCCACAGCcgtgcagatctcc...ggtgctctgtgtcTTTGCTTCCATGGATGGCCGGC 3'
            176                                                ||||||||||||||||||||||
                                                            3' TTTGCTTCCATGGATGGCCGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_1_rp<<<
         

         >42_Mus_AQP6_1_fp_Mus_AQP6_1_rp_T_3_Mus_AQP6 
         TCAATCTGGCCACAGCCACAGCcgtgcagatctcctggaagaccagcggggcccacgccaaccctgctgtgaccct
         ggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctggctggggccaca
         gctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacgtggtccacaaca
         gcacatcaactggccaggcggtggccgtggagctggttctgacgctgcagctggtgctctgtgtcTTTGCTTCCAT
         GGATGGCCGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_2_fp + Mus_AQP2_2_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 449 bp, GC content = 61.5%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 135(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_2_fp
            1                    22
         5' CGTGGCCTTTGGTCTGGGCATT 3'
            ||||||||||||||||||||||                                                  583
         5' CGTGGCCTTTGGTCTGGGCATTggcaccctggttc...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            135                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_2_rp<<<
         

         >65_Mus_AQP2_2_fp_Mus_AQP2_2_rp_T_4_Mus_AQP2 
         CGTGGCCTTTGGTCTGGGCATTggcaccctggttcaggctctgggccatgtcagcggggcccacatcaaccctgct
         gtgactgtggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgg
         gggccgtggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctct
         ccacaacaatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatcttt
         gcctccactgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggcc
         acctccttgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 6: Mean penalty: 0.4177 ± 0.1648, Mean Tm: 60.0 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_1    0.2902        138       60.2 / 60.1    5'-TGCTGTTCGTGCTGTTCGTGGG-3' / 5'-TCAGCACTTGGAGCTCGTGGGT-3'
T2: Mus_AQP12_2    0.4482        243       59.9 / 60.3    5'-TGCACACTGCAGCTCAACCCTG-3' / 5'-AGCAAGGTGTTCCCAGGGCAGT-3'
T3: Mus_AQP6_1     0.6388        315       59.7 / 60.3    5'-TCAATCTGGCCACAGCCACAGC-3' / 5'-GCCGGCCATCCATGGAAGCAAA-3'
T4: Mus_AQP2_2     0.2936        449       59.9 / 59.8    5'-CGTGGCCTTTGGTCTGGGCATT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_1_fp + Mus_AQP11_1_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 138 bp, GC content = 63.0%
           FP: 3'ΔG = -3.3(kcal/mol), Tm = 60.2 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.1 (°C)
           Binding sites: 65(22/22) ... 202(22/22)
         
         >>>Mus_AQP11_1_fp
            1                    22
         5' TGCTGTTCGTGCTGTTCGTGGG 3'
            ||||||||||||||||||||||                                                  202
         5' TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtg...gctctgctgctgcACCCACGAGCTCCAAGTGCTGA 3'
            65                                                 ||||||||||||||||||||||
                                                            3' ACCCACGAGCTCCAAGTGCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_1_rp<<<
         

         >9_Mus_AQP11_1_fp_Mus_AQP11_1_rp_T_1_Mus_AQP11 
         TGCTGTTCGTGCTGTTCGTGGGgctggcccgcgtgatcgcccggcaacagctacacaggcccgtggtccacgcctt
         cgtcctggagtttctagctaccttccagctctgctgctgcACCCACGAGCTCCAAGTGCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_2_fp + Mus_AQP12_2_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 243 bp, GC content = 60.1%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 60.3 (°C)
           Binding sites: 444(22/22) ... 686(22/22)
         
         >>>Mus_AQP12_2_fp
            1                    22
         5' TGCACACTGCAGCTCAACCCTG 3'
            ||||||||||||||||||||||                                                  686
         5' TGCACACTGCAGCTCAACCCTGcgtacatccgtgc...tctgtcacattccACTGCCCTGGGAACACCTTGCT 3'
            444                                                ||||||||||||||||||||||
                                                            3' ACTGCCCTGGGAACACCTTGCT 5'
                                                               22                   1
                                                                        Mus_AQP12_2_rp<<<
         

         >31_Mus_AQP12_2_fp_Mus_AQP12_2_rp_T_2_Mus_AQP12 
         TGCACACTGCAGCTCAACCCTGcgtacatccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttc
         catctgagcctcctccacctgcagcacagccttcttgtctacagggtgcctgccctggccctgctggtcactctca
         tggcctacacagcagggccctacacatctgccttcttcaatcctgccctggctgcctctgtcacattccACTGCCC
         TGGGAACACCTTGCT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_1_fp + Mus_AQP6_1_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 315 bp, GC content = 61.9%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -2.4(kcal/mol), Tm = 60.3 (°C)
           Binding sites: 176(22/22) ... 490(22/22)
         
         >>>Mus_AQP6_1_fp
            1                    22
         5' TCAATCTGGCCACAGCCACAGC 3'
            ||||||||||||||||||||||                                                  490
         5' TCAATCTGGCCACAGCCACAGCcgtgcagatctcc...ggtgctctgtgtcTTTGCTTCCATGGATGGCCGGC 3'
            176                                                ||||||||||||||||||||||
                                                            3' TTTGCTTCCATGGATGGCCGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_1_rp<<<
         

         >42_Mus_AQP6_1_fp_Mus_AQP6_1_rp_T_3_Mus_AQP6 
         TCAATCTGGCCACAGCCACAGCcgtgcagatctcctggaagaccagcggggcccacgccaaccctgctgtgaccct
         ggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctggctggggccaca
         gctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacgtggtccacaaca
         gcacatcaactggccaggcggtggccgtggagctggttctgacgctgcagctggtgctctgtgtcTTTGCTTCCAT
         GGATGGCCGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_2_fp + Mus_AQP2_2_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 449 bp, GC content = 61.5%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 135(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_2_fp
            1                    22
         5' CGTGGCCTTTGGTCTGGGCATT 3'
            ||||||||||||||||||||||                                                  583
         5' CGTGGCCTTTGGTCTGGGCATTggcaccctggttc...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            135                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_2_rp<<<
         

         >65_Mus_AQP2_2_fp_Mus_AQP2_2_rp_T_4_Mus_AQP2 
         CGTGGCCTTTGGTCTGGGCATTggcaccctggttcaggctctgggccatgtcagcggggcccacatcaaccctgct
         gtgactgtggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgg
         gggccgtggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctct
         ccacaacaatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatcttt
         gcctccactgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggcc
         acctccttgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 7: Mean penalty: 0.4251 ± 0.1572, Mean Tm: 60.0 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_2    0.3216         82       59.9 / 60.2    5'-TCCACGCCTTCGTCCTGGAGTT-3' / 5'-TCCTGCTCGCTCAGCACTTGGA-3'
T2: Mus_AQP12_1    0.4463        235       59.9 / 60.4    5'-CGCTGCCCAACACTCTGCTGAA-3' / 5'-AGAAGGCTGTGCTGCAGGTGGA-3'
T3: Mus_AQP6_1     0.6388        315       59.7 / 60.3    5'-TCAATCTGGCCACAGCCACAGC-3' / 5'-GCCGGCCATCCATGGAAGCAAA-3'
T4: Mus_AQP2_2     0.2936        449       59.9 / 59.8    5'-CGTGGCCTTTGGTCTGGGCATT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_2_fp + Mus_AQP11_2_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 82 bp, GC content = 59.8%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.2(kcal/mol), Tm = 60.2 (°C)
           Binding sites: 131(22/22) ... 212(22/22)
         
         >>>Mus_AQP11_2_fp
            1                    22
         5' TCCACGCCTTCGTCCTGGAGTT 3'
            ||||||||||||||||||||||                                                  212
         5' TCCACGCCTTCGTCCTGGAGTTtctagctaccttc...tgcacccacgagcTCCAAGTGCTGAGCGAGCAGGA 3'
            131                                                ||||||||||||||||||||||
                                                            3' TCCAAGTGCTGAGCGAGCAGGA 5'
                                                               22                   1
                                                                        Mus_AQP11_2_rp<<<
         

         >3_Mus_AQP11_2_fp_Mus_AQP11_2_rp_T_1_Mus_AQP11 
         TCCACGCCTTCGTCCTGGAGTTtctagctaccttccagctctgctgctgcacccacgagcTCCAAGTGCTGAGCGA
         GCAGGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_1_fp + Mus_AQP12_1_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 235 bp, GC content = 62.1%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.7(kcal/mol), Tm = 60.4 (°C)
           Binding sites: 320(22/22) ... 554(22/22)
         
         >>>Mus_AQP12_1_fp
            1                    22
         5' CGCTGCCCAACACTCTGCTGAA 3'
            ||||||||||||||||||||||                                                  554
         5' CGCTGCCCAACACTCTGCTGAAactgtcggcccag...catctgagcctccTCCACCTGCAGCACAGCCTTCT 3'
            320                                                ||||||||||||||||||||||
                                                            3' TCCACCTGCAGCACAGCCTTCT 5'
                                                               22                   1
                                                                        Mus_AQP12_1_rp<<<
         

         >27_Mus_AQP12_1_fp_Mus_AQP12_1_rp_T_2_Mus_AQP12 
         CGCTGCCCAACACTCTGCTGAAactgtcggcccaggtgctgggtgcacaggctgcctgtgccctgacccagcgctg
         ctgggcctgggagctcagcgaactacacttactacagagcctcatggctgcacactgcagctcaaccctgcgtaca
         tccgtgctgcagggcatgctcgtggagggtgcctgcaccttcttcttccatctgagcctccTCCACCTGCAGCACA
         GCCTTCT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_1_fp + Mus_AQP6_1_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 315 bp, GC content = 61.9%
           FP: 3'ΔG = -3.1(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -2.4(kcal/mol), Tm = 60.3 (°C)
           Binding sites: 176(22/22) ... 490(22/22)
         
         >>>Mus_AQP6_1_fp
            1                    22
         5' TCAATCTGGCCACAGCCACAGC 3'
            ||||||||||||||||||||||                                                  490
         5' TCAATCTGGCCACAGCCACAGCcgtgcagatctcc...ggtgctctgtgtcTTTGCTTCCATGGATGGCCGGC 3'
            176                                                ||||||||||||||||||||||
                                                            3' TTTGCTTCCATGGATGGCCGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_1_rp<<<
         

         >42_Mus_AQP6_1_fp_Mus_AQP6_1_rp_T_3_Mus_AQP6 
         TCAATCTGGCCACAGCCACAGCcgtgcagatctcctggaagaccagcggggcccacgccaaccctgctgtgaccct
         ggcctacctcgtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctggctggggccaca
         gctggggctgctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacgtggtccacaaca
         gcacatcaactggccaggcggtggccgtggagctggttctgacgctgcagctggtgctctgtgtcTTTGCTTCCAT
         GGATGGCCGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_2_fp + Mus_AQP2_2_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 449 bp, GC content = 61.5%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 135(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_2_fp
            1                    22
         5' CGTGGCCTTTGGTCTGGGCATT 3'
            ||||||||||||||||||||||                                                  583
         5' CGTGGCCTTTGGTCTGGGCATTggcaccctggttc...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            135                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_2_rp<<<
         

         >65_Mus_AQP2_2_fp_Mus_AQP2_2_rp_T_4_Mus_AQP2 
         CGTGGCCTTTGGTCTGGGCATTggcaccctggttcaggctctgggccatgtcagcggggcccacatcaaccctgct
         gtgactgtggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgg
         gggccgtggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctct
         ccacaacaatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatcttt
         gcctccactgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggcc
         acctccttgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 8: Mean penalty: 0.4408 ± 0.1772, Mean Tm: 59.8 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_2    0.3216         82       59.9 / 60.2    5'-TCCACGCCTTCGTCCTGGAGTT-3' / 5'-TCCTGCTCGCTCAGCACTTGGA-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_2     0.6808        266       60.0 / 59.3    5'-CTTCGGCCCTGCCGTCATTGTT-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_2     0.2936        449       59.9 / 59.8    5'-CGTGGCCTTTGGTCTGGGCATT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_2_fp + Mus_AQP11_2_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 82 bp, GC content = 59.8%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.2(kcal/mol), Tm = 60.2 (°C)
           Binding sites: 131(22/22) ... 212(22/22)
         
         >>>Mus_AQP11_2_fp
            1                    22
         5' TCCACGCCTTCGTCCTGGAGTT 3'
            ||||||||||||||||||||||                                                  212
         5' TCCACGCCTTCGTCCTGGAGTTtctagctaccttc...tgcacccacgagcTCCAAGTGCTGAGCGAGCAGGA 3'
            131                                                ||||||||||||||||||||||
                                                            3' TCCAAGTGCTGAGCGAGCAGGA 5'
                                                               22                   1
                                                                        Mus_AQP11_2_rp<<<
         

         >3_Mus_AQP11_2_fp_Mus_AQP11_2_rp_T_1_Mus_AQP11 
         TCCACGCCTTCGTCCTGGAGTTtctagctaccttccagctctgctgctgcacccacgagcTCCAAGTGCTGAGCGA
         GCAGGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_2_fp + Mus_AQP6_2_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 266 bp, GC content = 53.4%
           FP: 3'ΔG = -1.5(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 591(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_2_fp
            1                    22
         5' CTTCGGCCCTGCCGTCATTGTT 3'
            ||||||||||||||||||||||                                                  856
         5' CTTCGGCCCTGCCGTCATTGTTgggaagttcgcag...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            591                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_2_rp<<<
         

         >36_Mus_AQP6_2_fp_Mus_AQP6_2_rp_T_3_Mus_AQP6 
         CTTCGGCCCTGCCGTCATTGTTgggaagttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtc
         ctggcttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgg
         gcaccacaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacaga
         atgtttgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_2_fp + Mus_AQP2_2_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 449 bp, GC content = 61.5%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 135(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_2_fp
            1                    22
         5' CGTGGCCTTTGGTCTGGGCATT 3'
            ||||||||||||||||||||||                                                  583
         5' CGTGGCCTTTGGTCTGGGCATTggcaccctggttc...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            135                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_2_rp<<<
         

         >65_Mus_AQP2_2_fp_Mus_AQP2_2_rp_T_4_Mus_AQP2 
         CGTGGCCTTTGGTCTGGGCATTggcaccctggttcaggctctgggccatgtcagcggggcccacatcaaccctgct
         gtgactgtggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgg
         gggccgtggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctct
         ccacaacaatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatcttt
         gcctccactgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggcc
         acctccttgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 9: Mean penalty: 0.4489 ± 0.1687, Mean Tm: 59.8 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_2    0.3216         82       59.9 / 60.2    5'-TCCACGCCTTCGTCCTGGAGTT-3' / 5'-TCCTGCTCGCTCAGCACTTGGA-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_2     0.6808        266       60.0 / 59.3    5'-CTTCGGCCCTGCCGTCATTGTT-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_3     0.326         420       60.1 / 59.8    5'-TGGTTCAGGCTCTGGGCCATGT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_2_fp + Mus_AQP11_2_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 82 bp, GC content = 59.8%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.2(kcal/mol), Tm = 60.2 (°C)
           Binding sites: 131(22/22) ... 212(22/22)
         
         >>>Mus_AQP11_2_fp
            1                    22
         5' TCCACGCCTTCGTCCTGGAGTT 3'
            ||||||||||||||||||||||                                                  212
         5' TCCACGCCTTCGTCCTGGAGTTtctagctaccttc...tgcacccacgagcTCCAAGTGCTGAGCGAGCAGGA 3'
            131                                                ||||||||||||||||||||||
                                                            3' TCCAAGTGCTGAGCGAGCAGGA 5'
                                                               22                   1
                                                                        Mus_AQP11_2_rp<<<
         

         >3_Mus_AQP11_2_fp_Mus_AQP11_2_rp_T_1_Mus_AQP11 
         TCCACGCCTTCGTCCTGGAGTTtctagctaccttccagctctgctgctgcacccacgagcTCCAAGTGCTGAGCGA
         GCAGGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_2_fp + Mus_AQP6_2_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 266 bp, GC content = 53.4%
           FP: 3'ΔG = -1.5(kcal/mol), Tm = 60.0 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 591(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_2_fp
            1                    22
         5' CTTCGGCCCTGCCGTCATTGTT 3'
            ||||||||||||||||||||||                                                  856
         5' CTTCGGCCCTGCCGTCATTGTTgggaagttcgcag...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            591                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_2_rp<<<
         

         >36_Mus_AQP6_2_fp_Mus_AQP6_2_rp_T_3_Mus_AQP6 
         CTTCGGCCCTGCCGTCATTGTTgggaagttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtc
         ctggcttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgg
         gcaccacaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacaga
         atgtttgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_3_fp + Mus_AQP2_3_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 420 bp, GC content = 61.2%
           FP: 3'ΔG = -1.9(kcal/mol), Tm = 60.1 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 164(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_3_fp
            1                    22
         5' TGGTTCAGGCTCTGGGCCATGT 3'
            ||||||||||||||||||||||                                                  583
         5' TGGTTCAGGCTCTGGGCCATGTcagcggggcccac...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            164                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_3_rp<<<
         

         >59_Mus_AQP2_3_fp_Mus_AQP2_3_rp_T_4_Mus_AQP2 
         TGGTTCAGGCTCTGGGCCATGTcagcggggcccacatcaaccctgctgtgactgtggcgtgcctggtgggttgcca
         tgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgtggccggggccgccatcctccat
         gagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcgg
         tgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaa
         cctgggtagccctgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgc
         tccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 10: Mean penalty: 0.4655 ± 0.1994, Mean Tm: 59.8 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_2    0.3216         82       59.9 / 60.2    5'-TCCACGCCTTCGTCCTGGAGTT-3' / 5'-TCCTGCTCGCTCAGCACTTGGA-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_3     0.7468        261       59.9 / 59.3    5'-GCCCTGCCGTCATTGTTGGGAA-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_3     0.326         420       60.1 / 59.8    5'-TGGTTCAGGCTCTGGGCCATGT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_2_fp + Mus_AQP11_2_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 82 bp, GC content = 59.8%
           FP: 3'ΔG = -1.7(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.2(kcal/mol), Tm = 60.2 (°C)
           Binding sites: 131(22/22) ... 212(22/22)
         
         >>>Mus_AQP11_2_fp
            1                    22
         5' TCCACGCCTTCGTCCTGGAGTT 3'
            ||||||||||||||||||||||                                                  212
         5' TCCACGCCTTCGTCCTGGAGTTtctagctaccttc...tgcacccacgagcTCCAAGTGCTGAGCGAGCAGGA 3'
            131                                                ||||||||||||||||||||||
                                                            3' TCCAAGTGCTGAGCGAGCAGGA 5'
                                                               22                   1
                                                                        Mus_AQP11_2_rp<<<
         

         >3_Mus_AQP11_2_fp_Mus_AQP11_2_rp_T_1_Mus_AQP11 
         TCCACGCCTTCGTCCTGGAGTTtctagctaccttccagctctgctgctgcacccacgagcTCCAAGTGCTGAGCGA
         GCAGGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_3_fp + Mus_AQP6_3_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 261 bp, GC content = 53.3%
           FP: 3'ΔG = -2.6(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 596(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_3_fp
            1                    22
         5' GCCCTGCCGTCATTGTTGGGAA 3'
            ||||||||||||||||||||||                                                  856
         5' GCCCTGCCGTCATTGTTGGGAAgttcgcagtccat...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            596                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_3_rp<<<
         

         >35_Mus_AQP6_3_fp_Mus_AQP6_3_rp_T_3_Mus_AQP6 
         GCCCTGCCGTCATTGTTGGGAAgttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtcctggc
         ttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgggcacc
         acaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacagaatgtt
         tgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_3_fp + Mus_AQP2_3_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 420 bp, GC content = 61.2%
           FP: 3'ΔG = -1.9(kcal/mol), Tm = 60.1 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 164(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_3_fp
            1                    22
         5' TGGTTCAGGCTCTGGGCCATGT 3'
            ||||||||||||||||||||||                                                  583
         5' TGGTTCAGGCTCTGGGCCATGTcagcggggcccac...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            164                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_3_rp<<<
         

         >59_Mus_AQP2_3_fp_Mus_AQP2_3_rp_T_4_Mus_AQP2 
         TGGTTCAGGCTCTGGGCCATGTcagcggggcccacatcaaccctgctgtgactgtggcgtgcctggtgggttgcca
         tgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgtggccggggccgccatcctccat
         gagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcgg
         tgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaa
         cctgggtagccctgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgc
         tccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 11: Mean penalty: 0.4723 ± 0.1932, Mean Tm: 59.8 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_3    0.3491         84       59.7 / 60.0    5'-CCGAAATGGGTGCCGTGAGGTT-3' / 5'-TCAGGCTCCACAGGGCGCTTAT-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_3     0.7468        261       59.9 / 59.3    5'-GCCCTGCCGTCATTGTTGGGAA-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_3     0.326         420       60.1 / 59.8    5'-TGGTTCAGGCTCTGGGCCATGT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_3_fp + Mus_AQP11_3_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 84 bp, GC content = 60.7%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -0.4(kcal/mol), Tm = 60.0 (°C)
           Binding sites: 341(22/22) ... 424(22/22)
         
         >>>Mus_AQP11_3_fp
            1                    22
         5' CCGAAATGGGTGCCGTGAGGTT 3'
            ||||||||||||||||||||||                                                  424
         5' CCGAAATGGGTGCCGTGAGGTTgttggctcagctg...cagcaggtactgcATAAGCGCCCTGTGGAGCCTGA 3'
            341                                                ||||||||||||||||||||||
                                                            3' ATAAGCGCCCTGTGGAGCCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_3_rp<<<
         

         >5_Mus_AQP11_3_fp_Mus_AQP11_3_rp_T_1_Mus_AQP11 
         CCGAAATGGGTGCCGTGAGGTTgttggctcagctggttagcgccctgtgcagcaggtactgcATAAGCGCCCTGTG
         GAGCCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_3_fp + Mus_AQP6_3_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 261 bp, GC content = 53.3%
           FP: 3'ΔG = -2.6(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 596(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_3_fp
            1                    22
         5' GCCCTGCCGTCATTGTTGGGAA 3'
            ||||||||||||||||||||||                                                  856
         5' GCCCTGCCGTCATTGTTGGGAAgttcgcagtccat...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            596                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_3_rp<<<
         

         >35_Mus_AQP6_3_fp_Mus_AQP6_3_rp_T_3_Mus_AQP6 
         GCCCTGCCGTCATTGTTGGGAAgttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtcctggc
         ttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgggcacc
         acaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacagaatgtt
         tgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_3_fp + Mus_AQP2_3_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 420 bp, GC content = 61.2%
           FP: 3'ΔG = -1.9(kcal/mol), Tm = 60.1 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 164(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_3_fp
            1                    22
         5' TGGTTCAGGCTCTGGGCCATGT 3'
            ||||||||||||||||||||||                                                  583
         5' TGGTTCAGGCTCTGGGCCATGTcagcggggcccac...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            164                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_3_rp<<<
         

         >59_Mus_AQP2_3_fp_Mus_AQP2_3_rp_T_4_Mus_AQP2 
         TGGTTCAGGCTCTGGGCCATGTcagcggggcccacatcaaccctgctgtgactgtggcgtgcctggtgggttgcca
         tgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgtggccggggccgccatcctccat
         gagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcgg
         tgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaa
         cctgggtagccctgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgc
         tccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 12: Mean penalty: 0.4811 ± 0.1849, Mean Tm: 59.8 ± 0.2 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_3    0.3491         84       59.7 / 60.0    5'-CCGAAATGGGTGCCGTGAGGTT-3' / 5'-TCAGGCTCCACAGGGCGCTTAT-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_3     0.7468        261       59.9 / 59.3    5'-GCCCTGCCGTCATTGTTGGGAA-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_4     0.3612        442       59.9 / 59.8    5'-TTTGGTCTGGGCATTGGCACCC-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_3_fp + Mus_AQP11_3_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 84 bp, GC content = 60.7%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -0.4(kcal/mol), Tm = 60.0 (°C)
           Binding sites: 341(22/22) ... 424(22/22)
         
         >>>Mus_AQP11_3_fp
            1                    22
         5' CCGAAATGGGTGCCGTGAGGTT 3'
            ||||||||||||||||||||||                                                  424
         5' CCGAAATGGGTGCCGTGAGGTTgttggctcagctg...cagcaggtactgcATAAGCGCCCTGTGGAGCCTGA 3'
            341                                                ||||||||||||||||||||||
                                                            3' ATAAGCGCCCTGTGGAGCCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_3_rp<<<
         

         >5_Mus_AQP11_3_fp_Mus_AQP11_3_rp_T_1_Mus_AQP11 
         CCGAAATGGGTGCCGTGAGGTTgttggctcagctggttagcgccctgtgcagcaggtactgcATAAGCGCCCTGTG
         GAGCCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_3_fp + Mus_AQP6_3_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 261 bp, GC content = 53.3%
           FP: 3'ΔG = -2.6(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 596(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_3_fp
            1                    22
         5' GCCCTGCCGTCATTGTTGGGAA 3'
            ||||||||||||||||||||||                                                  856
         5' GCCCTGCCGTCATTGTTGGGAAgttcgcagtccat...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            596                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_3_rp<<<
         

         >35_Mus_AQP6_3_fp_Mus_AQP6_3_rp_T_3_Mus_AQP6 
         GCCCTGCCGTCATTGTTGGGAAgttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtcctggc
         ttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgggcacc
         acaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacagaatgtt
         tgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_4_fp + Mus_AQP2_4_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 442 bp, GC content = 61.1%
           FP: 3'ΔG = -3.3(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 142(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_4_fp
            1                    22
         5' TTTGGTCTGGGCATTGGCACCC 3'
            ||||||||||||||||||||||                                                  583
         5' TTTGGTCTGGGCATTGGCACCCtggttcaggctct...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            142                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_4_rp<<<
         

         >64_Mus_AQP2_4_fp_Mus_AQP2_4_rp_T_4_Mus_AQP2 
         TTTGGTCTGGGCATTGGCACCCtggttcaggctctgggccatgtcagcggggcccacatcaaccctgctgtgactg
         tggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgt
         ggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaac
         aatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctcca
         ctgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggccacctcct
         tgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 13: Mean penalty: 0.4857 ± 0.2186, Mean Tm: 59.8 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_3    0.3491         84       59.7 / 60.0    5'-CCGAAATGGGTGCCGTGAGGTT-3' / 5'-TCAGGCTCCACAGGGCGCTTAT-3'
T2: Mus_AQP12_3    0.4674        181       59.6 / 59.9    5'-TGCGAGTGTTGGTGGAGCTTGG-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_4     0.8002        313       59.3 / 59.9    5'-TTGGTGTGGGCTCTGTTCTGCC-3' / 5'-GCCTGGCCAGTTGATGTGCTGT-3'
T4: Mus_AQP2_3     0.326         420       60.1 / 59.8    5'-TGGTTCAGGCTCTGGGCCATGT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_3_fp + Mus_AQP11_3_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 84 bp, GC content = 60.7%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -0.4(kcal/mol), Tm = 60.0 (°C)
           Binding sites: 341(22/22) ... 424(22/22)
         
         >>>Mus_AQP11_3_fp
            1                    22
         5' CCGAAATGGGTGCCGTGAGGTT 3'
            ||||||||||||||||||||||                                                  424
         5' CCGAAATGGGTGCCGTGAGGTTgttggctcagctg...cagcaggtactgcATAAGCGCCCTGTGGAGCCTGA 3'
            341                                                ||||||||||||||||||||||
                                                            3' ATAAGCGCCCTGTGGAGCCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_3_rp<<<
         

         >5_Mus_AQP11_3_fp_Mus_AQP11_3_rp_T_1_Mus_AQP11 
         CCGAAATGGGTGCCGTGAGGTTgttggctcagctggttagcgccctgtgcagcaggtactgcATAAGCGCCCTGTG
         GAGCCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_3_fp + Mus_AQP12_3_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 181 bp, GC content = 63.0%
           FP: 3'ΔG = -2.3(kcal/mol), Tm = 59.6 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 161(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_3_fp
            1                    22
         5' TGCGAGTGTTGGTGGAGCTTGG 3'
            ||||||||||||||||||||||                                                  341
         5' TGCGAGTGTTGGTGGAGCTTGGcccctgggcaggg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            161                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_3_rp<<<
         

         >20_Mus_AQP12_3_fp_Mus_AQP12_3_rp_T_2_Mus_AQP12 
         TGCGAGTGTTGGTGGAGCTTGGcccctgggcagggggcttcggacccgacctgttgctgaccctggtcttcctgct
         tttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcaggagttcctcatggtg
         gaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_4_fp + Mus_AQP6_4_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 313 bp, GC content = 61.7%
           FP: 3'ΔG = -3.5(kcal/mol), Tm = 59.3 (°C)
           RP: 3'ΔG = -3.1(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 110(22/22) ... 422(22/22)
         
         >>>Mus_AQP6_4_fp
            1                    22
         5' TTGGTGTGGGCTCTGTTCTGCC 3'
            ||||||||||||||||||||||                                                  422
         5' TTGGTGTGGGCTCTGTTCTGCCctggcctgtggcg...aacgtggtccacaACAGCACATCAACTGGCCAGGC 3'
            110                                                ||||||||||||||||||||||
                                                            3' ACAGCACATCAACTGGCCAGGC 5'
                                                               22                   1
                                                                         Mus_AQP6_4_rp<<<
         

         >41_Mus_AQP6_4_fp_Mus_AQP6_4_rp_T_3_Mus_AQP6 
         TTGGTGTGGGCTCTGTTCTGCCctggcctgtggcgcttccctctgtgctccagatcgccatcaccttcaatctggc
         cacagccacagccgtgcagatctcctggaagaccagcggggcccacgccaaccctgctgtgaccctggcctacctc
         gtgggatcccatatctctctgcctcgggctatggcctatatcgctgcgcagctggctggggccacagctggggctg
         ctcttctttacggggtaactccaggaggtattcgagagacccttggggtcaacgtggtccacaACAGCACATCAAC
         TGGCCAGGC
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_3_fp + Mus_AQP2_3_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 420 bp, GC content = 61.2%
           FP: 3'ΔG = -1.9(kcal/mol), Tm = 60.1 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 164(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_3_fp
            1                    22
         5' TGGTTCAGGCTCTGGGCCATGT 3'
            ||||||||||||||||||||||                                                  583
         5' TGGTTCAGGCTCTGGGCCATGTcagcggggcccac...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            164                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_3_rp<<<
         

         >59_Mus_AQP2_3_fp_Mus_AQP2_3_rp_T_4_Mus_AQP2 
         TGGTTCAGGCTCTGGGCCATGTcagcggggcccacatcaaccctgctgtgactgtggcgtgcctggtgggttgcca
         tgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgtggccggggccgccatcctccat
         gagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcgg
         tgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaa
         cctgggtagccctgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgc
         tccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 14: Mean penalty: 0.4984 ± 0.1993, Mean Tm: 59.9 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_3    0.3491         84       59.7 / 60.0    5'-CCGAAATGGGTGCCGTGAGGTT-3' / 5'-TCAGGCTCCACAGGGCGCTTAT-3'
T2: Mus_AQP12_4    0.5719        194       60.5 / 59.9    5'-TGCTGCCTGGAGATGCGAGTGT-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_3     0.7468        261       59.9 / 59.3    5'-GCCCTGCCGTCATTGTTGGGAA-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_3     0.326         420       60.1 / 59.8    5'-TGGTTCAGGCTCTGGGCCATGT-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_3_fp + Mus_AQP11_3_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 84 bp, GC content = 60.7%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -0.4(kcal/mol), Tm = 60.0 (°C)
           Binding sites: 341(22/22) ... 424(22/22)
         
         >>>Mus_AQP11_3_fp
            1                    22
         5' CCGAAATGGGTGCCGTGAGGTT 3'
            ||||||||||||||||||||||                                                  424
         5' CCGAAATGGGTGCCGTGAGGTTgttggctcagctg...cagcaggtactgcATAAGCGCCCTGTGGAGCCTGA 3'
            341                                                ||||||||||||||||||||||
                                                            3' ATAAGCGCCCTGTGGAGCCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_3_rp<<<
         

         >5_Mus_AQP11_3_fp_Mus_AQP11_3_rp_T_1_Mus_AQP11 
         CCGAAATGGGTGCCGTGAGGTTgttggctcagctggttagcgccctgtgcagcaggtactgcATAAGCGCCCTGTG
         GAGCCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_4_fp + Mus_AQP12_4_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 194 bp, GC content = 62.9%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 60.5 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 148(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_4_fp
            1                    22
         5' TGCTGCCTGGAGATGCGAGTGT 3'
            ||||||||||||||||||||||                                                  341
         5' TGCTGCCTGGAGATGCGAGTGTtggtggagcttgg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            148                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_4_rp<<<
         

         >23_Mus_AQP12_4_fp_Mus_AQP12_4_rp_T_2_Mus_AQP12 
         TGCTGCCTGGAGATGCGAGTGTtggtggagcttggcccctgggcagggggcttcggacccgacctgttgctgaccc
         tggtcttcctgcttttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcagga
         gttcctcatggtggaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_3_fp + Mus_AQP6_3_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 261 bp, GC content = 53.3%
           FP: 3'ΔG = -2.6(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 596(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_3_fp
            1                    22
         5' GCCCTGCCGTCATTGTTGGGAA 3'
            ||||||||||||||||||||||                                                  856
         5' GCCCTGCCGTCATTGTTGGGAAgttcgcagtccat...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            596                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_3_rp<<<
         

         >35_Mus_AQP6_3_fp_Mus_AQP6_3_rp_T_3_Mus_AQP6 
         GCCCTGCCGTCATTGTTGGGAAgttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtcctggc
         ttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgggcacc
         acaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacagaatgtt
         tgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_3_fp + Mus_AQP2_3_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 420 bp, GC content = 61.2%
           FP: 3'ΔG = -1.9(kcal/mol), Tm = 60.1 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 164(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_3_fp
            1                    22
         5' TGGTTCAGGCTCTGGGCCATGT 3'
            ||||||||||||||||||||||                                                  583
         5' TGGTTCAGGCTCTGGGCCATGTcagcggggcccac...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            164                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_3_rp<<<
         

         >59_Mus_AQP2_3_fp_Mus_AQP2_3_rp_T_4_Mus_AQP2 
         TGGTTCAGGCTCTGGGCCATGTcagcggggcccacatcaaccctgctgtgactgtggcgtgcctggtgggttgcca
         tgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgtggccggggccgccatcctccat
         gagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaacaatgcaacagccggccaggcgg
         tgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctccactgatgagcgccgcagtgacaa
         cctgggtagccctgctctctccattggtttctctgttaccctgggccacctccttgggatctatttcaccggctgc
         tccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


****************************************************************************************************

PSC 15: Mean penalty: 0.5072 ± 0.1897, Mean Tm: 59.9 ± 0.3 (°C)

                              Amplicon       Tm (°C) 
Primer ID          Penalty    size (bp)      (FP/RP)      Forward primer (FP) / Reverse primer (RP)                  

T1: Mus_AQP11_3    0.3491         84       59.7 / 60.0    5'-CCGAAATGGGTGCCGTGAGGTT-3' / 5'-TCAGGCTCCACAGGGCGCTTAT-3'
T2: Mus_AQP12_4    0.5719        194       60.5 / 59.9    5'-TGCTGCCTGGAGATGCGAGTGT-3' / 5'-TTCAGCAGAGTGTTGGGCAGCG-3'
T3: Mus_AQP6_3     0.7468        261       59.9 / 59.3    5'-GCCCTGCCGTCATTGTTGGGAA-3' / 5'-ATGACCGGACAGCCTCCTCACA-3'
T4: Mus_AQP2_4     0.3612        442       59.9 / 59.8    5'-TTTGGTCTGGGCATTGGCACCC-3' / 5'-TGACAACTGCTGGAGCCAGGGA-3'


* Template 1: Mus_AQP11

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP11_3_fp + Mus_AQP11_3_rp ==> T1: Mus_AQP11

           PPC = 100.0%, Size = 84 bp, GC content = 60.7%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 59.7 (°C)
           RP: 3'ΔG = -0.4(kcal/mol), Tm = 60.0 (°C)
           Binding sites: 341(22/22) ... 424(22/22)
         
         >>>Mus_AQP11_3_fp
            1                    22
         5' CCGAAATGGGTGCCGTGAGGTT 3'
            ||||||||||||||||||||||                                                  424
         5' CCGAAATGGGTGCCGTGAGGTTgttggctcagctg...cagcaggtactgcATAAGCGCCCTGTGGAGCCTGA 3'
            341                                                ||||||||||||||||||||||
                                                            3' ATAAGCGCCCTGTGGAGCCTGA 5'
                                                               22                   1
                                                                        Mus_AQP11_3_rp<<<
         

         >5_Mus_AQP11_3_fp_Mus_AQP11_3_rp_T_1_Mus_AQP11 
         CCGAAATGGGTGCCGTGAGGTTgttggctcagctggttagcgccctgtgcagcaggtactgcATAAGCGCCCTGTG
         GAGCCTGA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 2: Mus_AQP12

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP12_4_fp + Mus_AQP12_4_rp ==> T2: Mus_AQP12

           PPC = 100.0%, Size = 194 bp, GC content = 62.9%
           FP: 3'ΔG = -2.2(kcal/mol), Tm = 60.5 (°C)
           RP: 3'ΔG = -3.8(kcal/mol), Tm = 59.9 (°C)
           Binding sites: 148(22/22) ... 341(22/22)
         
         >>>Mus_AQP12_4_fp
            1                    22
         5' TGCTGCCTGGAGATGCGAGTGT 3'
            ||||||||||||||||||||||                                                  341
         5' TGCTGCCTGGAGATGCGAGTGTtggtggagcttgg...atggtggaggcatCGCTGCCCAACACTCTGCTGAA 3'
            148                                                ||||||||||||||||||||||
                                                            3' CGCTGCCCAACACTCTGCTGAA 5'
                                                               22                   1
                                                                        Mus_AQP12_4_rp<<<
         

         >23_Mus_AQP12_4_fp_Mus_AQP12_4_rp_T_2_Mus_AQP12 
         TGCTGCCTGGAGATGCGAGTGTtggtggagcttggcccctgggcagggggcttcggacccgacctgttgctgaccc
         tggtcttcctgcttttcctggtacatggggtcaccttcgatggggcctctgccaaccccaccgtggccctgcagga
         gttcctcatggtggaggcatCGCTGCCCAACACTCTGCTGAA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 3: Mus_AQP6

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP6_3_fp + Mus_AQP6_3_rp ==> T3: Mus_AQP6

           PPC = 100.0%, Size = 261 bp, GC content = 53.3%
           FP: 3'ΔG = -2.6(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.3(kcal/mol), Tm = 59.3 (°C)
           Binding sites: 596(22/22) ... 856(22/22)
         
         >>>Mus_AQP6_3_fp
            1                    22
         5' GCCCTGCCGTCATTGTTGGGAA 3'
            ||||||||||||||||||||||                                                  856
         5' GCCCTGCCGTCATTGTTGGGAAgttcgcagtccat...tttgacttctccgTGTGAGGAGGCTGTCCGGTCAT 3'
            596                                                ||||||||||||||||||||||
                                                            3' TGTGAGGAGGCTGTCCGGTCAT 5'
                                                               22                   1
                                                                         Mus_AQP6_3_rp<<<
         

         >35_Mus_AQP6_3_fp_Mus_AQP6_3_rp_T_3_Mus_AQP6 
         GCCCTGCCGTCATTGTTGGGAAgttcgcagtccattggatcttctgggtaggaccgctcacaggggctgtcctggc
         ttcgctgatctacaactttatcttgttccctgacaccaagactgtagcccagcgattggccatccttgtgggcacc
         acaaaggtggagaaagtggtagacctggagccccagaagaaagaatcacagacaaactctgaggacacagaatgtt
         tgacttctccgTGTGAGGAGGCTGTCCGGTCAT
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


* Template 4: Mus_AQP2

   ** Diagram of the binding pattern between the primers and the template

     *** Mus_AQP2_4_fp + Mus_AQP2_4_rp ==> T4: Mus_AQP2

           PPC = 100.0%, Size = 442 bp, GC content = 61.1%
           FP: 3'ΔG = -3.3(kcal/mol), Tm = 59.9 (°C)
           RP: 3'ΔG = -2.8(kcal/mol), Tm = 59.8 (°C)
           Binding sites: 142(22/22) ... 583(22/22)
         
         >>>Mus_AQP2_4_fp
            1                    22
         5' TTTGGTCTGGGCATTGGCACCC 3'
            ||||||||||||||||||||||                                                  583
         5' TTTGGTCTGGGCATTGGCACCCtggttcaggctct...gaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA 3'
            142                                                ||||||||||||||||||||||
                                                            3' TCCCTGGCTCCAGCAGTTGTCA 5'
                                                               22                   1
                                                                         Mus_AQP2_4_rp<<<
         

         >64_Mus_AQP2_4_fp_Mus_AQP2_4_rp_T_4_Mus_AQP2 
         TTTGGTCTGGGCATTGGCACCCtggttcaggctctgggccatgtcagcggggcccacatcaaccctgctgtgactg
         tggcgtgcctggtgggttgccatgtctccttccttcgagctgccttctacgtggctgcccagctgctgggggccgt
         ggccggggccgccatcctccatgagattacccctgtagaaatccgcggggacctggctgtcaatgctctccacaac
         aatgcaacagccggccaggcggtgactgtggagctcttcctgaccatgcagctggtgctgtgcatctttgcctcca
         ctgatgagcgccgcagtgacaacctgggtagccctgctctctccattggtttctctgttaccctgggccacctcct
         tgggatctatttcaccggctgctccatgaatccagcccgcTCCCTGGCTCCAGCAGTTGTCA
         
   ** MFEprimer specificity checking result

         No MFEprimer specificity checking result is available


References

    Qu, W., Shen, Z., Zhao, D., Yang, Y. and Zhang, C. (2009) MFEprimer: 
    multiple factor evaluation of the specificity of PCR primers, 
    Bioinformatics, 25, 276-278.
    
    Altschul, S.F., Madden, T.L., Schaffer, A.A., Zhang, J., Zhang, Z., Miller, W. 
    and Lipman, D.J. (1997) Gapped BLAST and PSI-BLAST: a new generation of protein
    database search programs, Nucleic Acids Res, 25, 3389-3402.
    