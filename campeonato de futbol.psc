Proceso campeonato
	
	partido<- 0;
	//son 10 partidos que juega un equipo//
	
	ganados<-0;
	empatados<-0;
	perdidos<-0;
	carrera<-0;
	//estadisticas que se usaran//
	
	Repetir
		
		Limpiar Pantalla;
		
		partido<- partido+ 1;
		
		
		
		Repetir
			
			Escribir "ingrese los goles que acerto su equipo durante el partido n°", partido;
			Leer afavor;
			
			si afavor<0 Entonces
				Escribir "Los goles no pueden ser negativos";
			FinSi
			
		Hasta Que afavor>=0
		
		Repetir
			
			Escribir "ingrese los goles en contra de su equipo durante el partido n°", partido;
		    Leer contra;
			
		    si contra<0 Entonces
			    Escribir "Los goles no pueden ser negativos";
		    FinSi
			
		Hasta Que contra>=0 
		
		
		estado<- afavor-contra;
		
		carrera<- carrera+afavor; 
		
		si estado<0 Entonces
			
			perdidos<- perdidos+1;
			Escribir "su equipo perdio el partido n°", partido;
			Escribir "con una diferencia en contra de ", -estado, " goles";
			
		SiNo
			
			si estado=0 Entonces
				
				empatados<- empatados+1;
				Escribir "su equipo empato el partido n°", partido, " goles";
				Escribir "sin diferencia de goles";
				
			SiNo
				
				ganados<- ganados+1;
				Escribir "su equipo ganó el partido n°", partido;
				Escribir "con una diferencia a favor de ", estado, " goles";
				
			FinSi
			
		FinSi
		
		Escribir "---------------------------------------";
		Escribir "precione una tecla para continuar";
		
		Esperar Tecla;
		
		
	Hasta Que partido = 10 
	
	Limpiar Pantalla;
	
	puntos<- ganados*3 + empatados;
	
	Escribir "su equipo obtuvo ", puntos, " puntos";
	Escribir "con ", carrera, " gol(es) acertados y";
	Escribir ganados, " victoria(s) en su carrera";
	
	si puntos<10 Entonces
		Escribir "Clasificación: Liguilla de promoción.";
	SiNo
		si puntos>=10 y puntos<=20 Entonces
			Escribir "Clasificación: No liguilla.";
		SiNo
			Escribir "Clasificación: Liguilla de Campeonato.";
		FinSi
	FinSi
	
FinProceso
