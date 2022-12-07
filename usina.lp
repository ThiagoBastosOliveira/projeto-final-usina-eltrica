\ Model Geradores
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  - 4200 gerador[0,0] - 2100 gerador[0,1] - 4200 gerador[0,2]
   - 2100 gerador[0,3] - 4200 gerador[0,4] + 5850 gerador[1,0]
   + 2925 gerador[1,1] + 5850 gerador[1,2] + 2925 gerador[1,3]
   + 5850 gerador[1,4] - 9000 gerador[2,0] - 4500 gerador[2,1]
   - 9000 gerador[2,2] - 4500 gerador[2,3] - 9000 gerador[2,4]
   + 2000 iniciar[0,0] + 2000 iniciar[0,1] + 2000 iniciar[0,2]
   + 2000 iniciar[0,3] + 2000 iniciar[0,4] + 1000 iniciar[1,0]
   + 1000 iniciar[1,1] + 1000 iniciar[1,2] + 1000 iniciar[1,3]
   + 1000 iniciar[1,4] + 500 iniciar[2,0] + 500 iniciar[2,1]
   + 500 iniciar[2,2] + 500 iniciar[2,3] + 500 iniciar[2,4] + 12 saida[0,0]
   + 6 saida[0,1] + 12 saida[0,2] + 6 saida[0,3] + 12 saida[0,4]
   + 7.8 saida[1,0] + 3.9 saida[1,1] + 7.8 saida[1,2] + 3.9 saida[1,3]
   + 7.8 saida[1,4] + 18 saida[2,0] + 9 saida[2,1] + 18 saida[2,2]
   + 9 saida[2,3] + 18 saida[2,4]
Subject To
 R0: gerador[0,0] <= 12
 R1: gerador[0,1] <= 12
 R2: gerador[0,2] <= 12
 R3: gerador[0,3] <= 12
 R4: gerador[0,4] <= 12
 R5: gerador[1,0] <= 10
 R6: gerador[1,1] <= 10
 R7: gerador[1,2] <= 10
 R8: gerador[1,3] <= 10
 R9: gerador[1,4] <= 10
 R10: gerador[2,0] <= 5
 R11: gerador[2,1] <= 5
 R12: gerador[2,2] <= 5
 R13: gerador[2,3] <= 5
 R14: gerador[2,4] <= 5
 R15: - 850 gerador[0,0] + saida[0,0] >= 0
 R16: - 850 gerador[0,1] + saida[0,1] >= 0
 R17: - 850 gerador[0,2] + saida[0,2] >= 0
 R18: - 850 gerador[0,3] + saida[0,3] >= 0
 R19: - 850 gerador[0,4] + saida[0,4] >= 0
 R20: - 1250 gerador[1,0] + saida[1,0] >= 0
 R21: - 1250 gerador[1,1] + saida[1,1] >= 0
 R22: - 1250 gerador[1,2] + saida[1,2] >= 0
 R23: - 1250 gerador[1,3] + saida[1,3] >= 0
 R24: - 1250 gerador[1,4] + saida[1,4] >= 0
 R25: - 1500 gerador[2,0] + saida[2,0] >= 0
 R26: - 1500 gerador[2,1] + saida[2,1] >= 0
 R27: - 1500 gerador[2,2] + saida[2,2] >= 0
 R28: - 1500 gerador[2,3] + saida[2,3] >= 0
 R29: - 1500 gerador[2,4] + saida[2,4] >= 0
 R30: - 2000 gerador[0,0] + saida[0,0] <= 0
 R31: - 2000 gerador[0,1] + saida[0,1] <= 0
 R32: - 2000 gerador[0,2] + saida[0,2] <= 0
 R33: - 2000 gerador[0,3] + saida[0,3] <= 0
 R34: - 2000 gerador[0,4] + saida[0,4] <= 0
 R35: - 1750 gerador[1,0] + saida[1,0] <= 0
 R36: - 1750 gerador[1,1] + saida[1,1] <= 0
 R37: - 1750 gerador[1,2] + saida[1,2] <= 0
 R38: - 1750 gerador[1,3] + saida[1,3] <= 0
 R39: - 1750 gerador[1,4] + saida[1,4] <= 0
 R40: - 4000 gerador[2,0] + saida[2,0] <= 0
 R41: - 4000 gerador[2,1] + saida[2,1] <= 0
 R42: - 4000 gerador[2,2] + saida[2,2] <= 0
 R43: - 4000 gerador[2,3] + saida[2,3] <= 0
 R44: - 4000 gerador[2,4] + saida[2,4] <= 0
 R45: saida[0,0] + saida[1,0] + saida[2,0] >= 15000
 R46: saida[0,1] + saida[1,1] + saida[2,1] >= 30000
 R47: saida[0,2] + saida[1,2] + saida[2,2] >= 25000
 R48: saida[0,3] + saida[1,3] + saida[2,3] >= 40000
 R49: saida[0,4] + saida[1,4] + saida[2,4] >= 27000
 R50: 2000 gerador[0,0] + 1750 gerador[1,0] + 4000 gerador[2,0] >= 17250
 R51: 2000 gerador[0,1] + 1750 gerador[1,1] + 4000 gerador[2,1] >= 34500
 R52: 2000 gerador[0,2] + 1750 gerador[1,2] + 4000 gerador[2,2] >= 28750
 R53: 2000 gerador[0,3] + 1750 gerador[1,3] + 4000 gerador[2,3] >= 46000
 R54: 2000 gerador[0,4] + 1750 gerador[1,4] + 4000 gerador[2,4] >= 31050
 R55: gerador[0,0] - iniciar[0,0] <= 5
 R56: gerador[1,0] - iniciar[1,0] <= 5
 R57: gerador[2,0] - iniciar[2,0] <= 5
 R58: - gerador[0,0] + gerador[0,1] - iniciar[0,1] <= 0
 R59: - gerador[0,1] + gerador[0,2] - iniciar[0,2] <= 0
 R60: - gerador[0,2] + gerador[0,3] - iniciar[0,3] <= 0
 R61: - gerador[0,3] + gerador[0,4] - iniciar[0,4] <= 0
 R62: - gerador[1,0] + gerador[1,1] - iniciar[1,1] <= 0
 R63: - gerador[1,1] + gerador[1,2] - iniciar[1,2] <= 0
 R64: - gerador[1,2] + gerador[1,3] - iniciar[1,3] <= 0
 R65: - gerador[1,3] + gerador[1,4] - iniciar[1,4] <= 0
 R66: - gerador[2,0] + gerador[2,1] - iniciar[2,1] <= 0
 R67: - gerador[2,1] + gerador[2,2] - iniciar[2,2] <= 0
 R68: - gerador[2,2] + gerador[2,3] - iniciar[2,3] <= 0
 R69: - gerador[2,3] + gerador[2,4] - iniciar[2,4] <= 0
Bounds
Generals
 gerador[0,0] gerador[0,1] gerador[0,2] gerador[0,3] gerador[0,4]
 gerador[1,0] gerador[1,1] gerador[1,2] gerador[1,3] gerador[1,4]
 gerador[2,0] gerador[2,1] gerador[2,2] gerador[2,3] gerador[2,4]
 iniciar[0,0] iniciar[0,1] iniciar[0,2] iniciar[0,3] iniciar[0,4]
 iniciar[1,0] iniciar[1,1] iniciar[1,2] iniciar[1,3] iniciar[1,4]
 iniciar[2,0] iniciar[2,1] iniciar[2,2] iniciar[2,3] iniciar[2,4]
 saida[0,0] saida[0,1] saida[0,2] saida[0,3] saida[0,4] saida[1,0]
 saida[1,1] saida[1,2] saida[1,3] saida[1,4] saida[2,0] saida[2,1]
 saida[2,2] saida[2,3] saida[2,4]
End
