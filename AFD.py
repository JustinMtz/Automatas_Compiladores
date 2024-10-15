class AFD:
    def __init__(self, num_estados, alfabeto, transiciones, estado_inicial, estados_aceptacion):
        self.num_estados = num_estados
        self.alfabeto = alfabeto
        self.transiciones = transiciones
        self.estado_inicial = estado_inicial
        self.estados_aceptacion = estados_aceptacion

    def procesar_cadena(self, cadena):
        estado_actual = self.estado_inicial
        for simbolo in cadena:
            if (estado_actual, simbolo) in self.transiciones:
                estado_actual = self.transiciones[(estado_actual, simbolo)]
            else:
                return "RECHAZADA"
        return "ACEPTADA" if estado_actual in self.estados_aceptacion else "RECHAZADA"

N = 3
S = 2
D = 6
q0 = 1
T = 1
C = 3

alfabeto = ['0', '1']
estados_aceptacion = {2}
transiciones = {
    (1, '0'): 1,
    (1, '1'): 2,
    (2, '0'): 3,
    (2, '1'): 2,
    (3, '0'): 3,
    (3, '1'): 2,
}

cadenas = ['100', '0', '11']

afd = AFD(N, alfabeto, transiciones, q0, estados_aceptacion)

resultados = [afd.procesar_cadena(cadena) for cadena in cadenas]
print(resultados)