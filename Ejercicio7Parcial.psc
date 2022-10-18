Proceso sin_titulo
	Definir alumnos, preciouni, precBRC , precUSH, precMDZ,cont Como Entero
	Definir continuar ,s ,n , destino, BRC,MDZ, USH ,b,u,m  Como Caracter
	precBRC= 180000
	precMDZ=120000
	precUSH=200000
	cont=0
	BRC = b
	USH = u
	MDZ =  m
	Mientras cont = 0 Hacer
		alumnos = 0
		preciouni = 0
		Escribir "Seleccione una opcion de viaje: "
		Escribir "BRC-Bariloche"
		Escribir "USH-Ushuaia"
		Escribir "MDZ-Mendoza"
		Leer destino
		Si destino = BRC O destino = USH O destino = MDZ Entonces
			Segun destino Hacer
				b:
					Escribir "El precio base de cada pasaje es $" precBRC " , si la cantidad supera 19 alumnos , se aplica un descuento del 10%"
					Escribir "Ingrese la cantidad de alumnos a viajar"
					Leer alumnos
					Si alumnos >0 Entonces
						Si alumnos >=20 Entonces
							des = (precBRC*10)/100
							preciouni = precBRC - desBRC
							Escribir "El precio por cada alumno es $" preciouni
						SiNo
							Escribir "El precio por cada alumno es $" precBRC
						FinSi
					SiNo
						Escribir "Ingrese una cantidad de alumnos correcta"
					FinSi
				u:
					Escribir "El precio base de cada pasaje es $" precUSH ", si la cantidad es mayor a 19 alumnos , se realiza un descunto del 10%"
					Escribir "Ingrese la cantidad de alumnos"
					Leer alumnos
					Si alumnos>0 Entonces
						Si alumnos>=20 Entonces
							desUSH = (precUSH*10)/100
							preciouni = precUSH - desUSH
							Escribir "El precio por cada alumno es $" preciouni
						SiNo
							Escribir "El precio por cada alumno es $" precUSH
						FinSi
					SiNo
						Escribir "Ingrese una cantidad correcta de alumnos"
					FinSi
				m:
					Escribir "El precio base de cada pasaje es $" precMDZ " , si la cantidad de pasajeros es mayor a 19 , se aplica un descuento del 10%"
					Escribir "Ingrese la cantidad de alumnos"
					Leer alumnos
					Si alumnos>0 Entonces
						Si alumnos >=20 Entonces
							descMDZ = (precMDZ*10) / 100
							preciouni = precMDZ - descMDZ
							Escribir "El precio de cada alumno es $" preciouni
						SiNo
							Escribir "El precio por cada alumno es de $" precMDZ 
						FinSi
					SiNo
						Escribir "Ingrese una cantidad correcta de alumnos"
					FinSi
			FinSegun
		SiNo
			Escribir "Seleccione un desstino correcto"
		FinSi
		Escribir "Si quiere generar otro presupuesto , escriba S para si o n para no"
		Leer Continuar
		Si continuar = s Entonces
			cont = 0
		SiNo
			continuar = n
			cont = 1
		FinSi
	Fin Mientras
	Mostrar "Que tenga un buen dia!"
FinProceso