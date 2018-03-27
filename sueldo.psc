Proceso calculador_de_sueldo
	emplnumero<-0;
	Escribir "calculador de sueldo";
	escribir "ingrese el numero de empleados de la empresa (MAXIMO= 20)";
	leer empleados;
	Mientras emplnumero<empleados Hacer
		
		
		emplnumero<- emplnumero+1;
		
		Limpiar Pantalla;
		
		
		Repetir
			Escribir "ingrese el grado de sueldo base del empleado n°", emplnumero, ".";
		    Escribir "grado de sueldo:";
		    Escribir "1. $450.000";
		    Escribir "2. $550.000";
		    Escribir "3. $700.000";
		    
			Leer gradosueldo;
			
			Segun gradosueldo Hacer
			1:
				sueldo<-450000;
			2:
				sueldo<-550000;
			3:
				sueldo<-700000;
			De Otro Modo:
				Escribir "ERROR: opcion no valida";
		    FinSegun
		Hasta Que gradosueldo>0 y gradosueldo<4;
		
		Limpiar Pantalla;
		
		Escribir "ingrese cantidad de horas extras del empleado n°", emplnumero, ".";
		leer hextras;
		si hextras>=1 y hextras<=3 entonces
			pagohe<-2000;
		SiNo
			si hextras>=4 y hextras<=7 Entonces
				pagohe<-3000;
			SiNo
				si hextras>7 Entonces
					pagohe<-3500;
				FinSi
			FinSi
		FinSi
		
		Limpiar Pantalla;
		
		Repetir
			Escribir "ingrese a que isapre pertenese el empleado n°", emplnumero, ".";
			Escribir "isapre:";
			Escribir "1. colmena";
			Escribir "2. ban médica";
			Escribir "3. vida 3";
			Escribir "4. fonasa";
			leer isapre;
			Segun isapre hacer
				1:
					descuento1<- 6.5;
				2:
					descuento1<- 7.3;
				3:
					descuento1<- 7;
				4:
					descuento1<- 7;
				De Otro Modo:
					Escribir "ERROR: opcion no valida";
			FinSegun
		Hasta Que isapre>0 y isapre<5;
		
		limpiar pantalla;
		
		Repetir
			Escribir "ingrese afp a la cual pertenese el empleado n°", emplnumero, ".";
			Escribir "afp:";
			Escribir "1. BanSander";
			Escribir "2. Geometrica SA";
			Escribir "3. cumprum";
			Escribir "4. Provida";
			leer afp;
			Segun afp hacer
				1:
					descuento2<- 12;
				2:
					descuento2<- 13.4;
				3:
					descuento2<- 12.3;
				4:
					descuento2<- 12.9;
				De Otro Modo:
					Escribir "ERROR: opcion no valida";
			FinSegun
		Hasta Que afp>0 y afp<5;
		
		Limpiar Pantalla;
		
		
		T<-sueldo+pagohe;
		TT<-t-t*[(descuento1/100)+(descuento2/100)];
		
		
		si emplnumero=1 Entonces
			empleado1<-tt;
		FinSi
		
		si emplnumero=2 Entonces
			empleado2<-tt;
		SiNo
			empleado2<-0;
		FinSi
		
		si emplnumero=3 Entonces
			empleado3<-tt;
		SiNo
			empleado3<-0;
		FinSi
		
		si emplnumero=4 Entonces
			empleado4<-tt;
		SiNo
			empleado4<-0;
		FinSi
		
		si emplnumero=5 Entonces
			empleado5<-tt;
		SiNo
			empleado5<-0;
		FinSi
		
		si emplnumero=6 Entonces
			empleado6<-tt;
		SiNo
			empleado6<-0;
		FinSi
		
		si emplnumero=7 Entonces
			empleado7<-tt;
		SiNo
			empleado7<-0;
		FinSi
		
		si emplnumero=8 Entonces
			empleado8<-tt;
		SiNo
			empleado8<-0;
		FinSi
		
		si emplnumero=9 Entonces
			empleado9<-tt;
		SiNo
			empleado9<-0;
		FinSi
		
		
		si emplnumero=10 Entonces
			empleado10<-tt;
		SiNo
			empleado10<-0;
		FinSi
		
		si emplnumero=11 Entonces
			empleado11<-tt;
		SiNo
			empleado11<-0;
		FinSi
		
		si emplnumero=12 Entonces
			empleado12<-tt;
		SiNo
			empleado12<-0;
		FinSi
		
		si emplnumero=13 Entonces
			empleado13<-tt;
		SiNo
			empleado13<-0;
		FinSi
		
		si emplnumero=14 Entonces
			empleado14<-tt;
		SiNo
			empleado14<-0;
		FinSi
		
		si emplnumero=15 Entonces
			empleado15<-tt;
		SiNo
			empleado15<-0;
		FinSi
		
		si emplnumero=16 Entonces
			empleado16<-tt;
		SiNo
			empleado16<-0;
		FinSi
		
		si emplnumero=17 Entonces
			empleado17<-tt;
		SiNo
			empleado17<-0;
		FinSi
		
		si emplnumero=18 Entonces
			empleado18<-tt;
		SiNo
			empleado18<-0;
		FinSi
		
		si emplnumero=19 Entonces
			empleado19<-tt;
		SiNo
			empleado19<-0;
		FinSi
		
		si emplnumero=20 Entonces
			empleado20<-tt;
		SiNo
			empleado20<-0;
		FinSi
		
		
	FinMientras
	
	Escribir "el sueldo de sus empleados sera:"
	Escribir empleado1;
	escribir empleado2;
	Escribir empleado3;
	Escribir empleado4;
	Escribir empleado5;
	Escribir empleado6;
	escribir empleado7;
	Escribir empleado8;
	Escribir empleado9;
	Escribir empleado10;
	Escribir empleado11;
	escribir empleado12;
	Escribir empleado13;
	Escribir empleado14;
	Escribir empleado15;
	Escribir empleado16;
	escribir empleado17;	
	Escribir empleado18;
	Escribir empleado19;
	escribir empleado20;	
FinProceso
