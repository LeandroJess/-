Algoritmo BoletaPagoDocentes
	
    // Definir variables de entrada
    Definir Nombre, CI, Cargo Como Cadena
    Definir Sueldo, HorasTrabajadas, AniosAntiguedad Como Entero
	Definir Mes Como Caracter
    // Definir variables de salida
    Definir HaberBasico, BonoAntiguedad, TotalIngresos Como Real
    Definir DescuentoAfp, TotalDescuentos Como Real
    Definir LiquidoPagable Como Real
	
    // Leer datos de entrada
    Escribir "Ingrese el nombre del docente:"
    Leer Nombre
    Escribir "Ingrese el n�mero de c�dula de identidad del docente:"
    Leer CI
    Escribir "Ingrese el cargo del docente:"
    Leer Cargo
    Escribir "Ingrese el sueldo del docente:"
    Leer Sueldo
    Escribir "Ingrese el n�mero de horas trabajadas en el mes:"
    Leer HorasTrabajadas
    Escribir "Ingrese el mes de pago:"
    Leer Mes
    Escribir "Ingrese el n�mero de a�os de antig�edad del docente:"
    Leer a�osAntiguedad
	
    // Calcular los ingresos del docente
    HaberBasico <- Sueldo
    BonoAntiguedad <- 0
	
    si a�osAntiguedad < 2 entonces
		BonoAntiguedad = 0
	SiNo
		si a�osAntiguedad >= 2 y a�osAntiguedad <= 4 Entonces
			BonoAntiguedad = 0.05
		SiNo
			si a�osAntiguedad >= 5 y a�osAntiguedad <= 7 Entonces
				BonoAntiguedad = 0.11
			SiNo
				si a�osAntiguedad >= 8 y a�osAntiguedad <= 10 Entonces
					BonoAntiguedad = 0.18
				SiNo
					SI a�osAntiguedad >= 11 y a�osAntiguedad <= 14 Entonces
						BonoAntiguedad = 0.26
					SiNo
						si a�osAntiguedad >= 15 y a�osAntiguedad <= 19 Entonces
							BonoAntiguedad = 0.34
						SiNo
							si a�osAntiguedad >= 20 y a�osAntiguedad >= 24 Entonces
								BonoAntiguedad = 0.42
							SiNo
								si a�osAntiguedad >= 25 Entonces
									BonoAntiguedad = 0.25
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin si
	
    TotalIngresos <- HaberBasico + BonoAntiguedad
	
    // Calcular los descuentos
    DescuentoAfp = 1271 * HaberBasico
	
    TotalEgresos <- DescuentoAfp
	
    // Calcular el neto a pagar
    LiquidoPagable <- TotalIngresos - TotalEgresos
	
    // Imprimir la boleta de pago
    Escribir "------------------------------"
	Escribir "UNIVERSIDAD CAT�LICA BOLIVIANA"
	Escribir "------------------------------"
	Escribir "BOLETA DE PAGO - " Mes
    Escribir "Nombre: " Nombre
    Escribir "CI: " CI
    Escribir "Cargo: " Cargo
    Escribir "Sueldo: " Sueldo
    Escribir "Horas trabajadas: " HorasTrabajadas
    Escribir "Haber b�sico: " HaberBasico
    Escribir "Bono de antig�edad: " BonoAntiguedad
	Escribir "Total de egresos: "  TotalEgresos "Bs"
    Escribir "Total de ingresos: " TotalIngresos "Bs"
    Escribir "Descuento AFP: " DescuentoAfp
    Escribir "Liquido Pagable: " LiquidoPagable
FinAlgoritmo