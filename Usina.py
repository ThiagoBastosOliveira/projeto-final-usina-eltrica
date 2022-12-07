from gurobipy import *

tipos_geradores = 3
periodos = 5
ligar_periodos = 5

geradores = [12, 10, 5]
horas = [6, 3, 6, 3, 6]
demandas = [15000, 30000, 25000, 40000, 27000]
carga_minima = [850, 1250, 1500]
carga_maxima = [2000, 1750, 4000]
custo_hora = [1000, 2600, 3000]
custo_mwh = [2, 1.3, 3]
custo_ligar = [2000, 1000, 500]

model = Model('Geradores')

gerador = model.addVars(tipos_geradores, periodos, vtype=GRB.INTEGER, name="gerador")
ligar_gerador = model.addVars(tipos_geradores, periodos, vtype=GRB.INTEGER, name="iniciar")
saida = model.addVars(tipos_geradores, periodos, vtype=GRB.INTEGER, name="saida")

numero_geradores = model.addConstrs(gerador[tipo, periodo] <= geradores[tipo]
                                    for tipo in range(tipos_geradores)
                                    for periodo in range(periodos))

saida_minima = model.addConstrs((saida[tipo, periodo] >= carga_minima[tipo] * gerador[tipo, periodo])
                                for tipo in range(tipos_geradores)
                                for periodo in range(periodos))

saida_maxima = model.addConstrs((saida[tipo, periodo] <= carga_maxima[tipo] * gerador[tipo, periodo])
                                for tipo in range(tipos_geradores)
                                for periodo in range(periodos))

demanda = model.addConstrs(quicksum(saida[tipo, periodo]
                                    for tipo in range(tipos_geradores)) >= demandas[periodo]
                                    for periodo in range(periodos))

reserva = model.addConstrs(quicksum(carga_maxima[tipo] * gerador[tipo, periodo]
                                    for tipo in range(tipos_geradores)) >= 1.15 * demandas[periodo]
                                    for periodo in range(periodos))

ligar_primeira_vez = model.addConstrs((gerador[tipo, 0] <= ligar_periodos + ligar_gerador[tipo, 0])
                                      for tipo in range(tipos_geradores))

ligar = model.addConstrs((gerador[tipo, periodo] <= gerador[tipo, periodo - 1] + ligar_gerador[tipo, periodo])
                         for tipo in range(tipos_geradores)
                         for periodo in range(1, periodos))

ativar = quicksum(custo_hora[tipo] * horas[periodo] * gerador[tipo, periodo]
                  for tipo in range(tipos_geradores)
                  for periodo in range(periodos))

por_mw = quicksum(custo_mwh[tipo] * horas[periodo] * (saida[tipo, periodo] - carga_minima[tipo] * gerador[tipo, periodo])
                  for tipo in range(tipos_geradores)
                  for periodo in range(periodos))

comecar_geracao = quicksum(custo_ligar[tipo] * ligar_gerador[tipo, periodo]
                           for tipo in range(tipos_geradores)
                           for periodo in range(periodos))

model.setObjective(ativar + por_mw + comecar_geracao)

model.write('usina.lp')
model.optimize()
