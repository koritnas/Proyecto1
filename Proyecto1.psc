Proceso precioYdescuentos
	
	Definir arreglo Como Caracter;     
	Dimension arreglo[3];               
	
	// Arreglos
	arreglo[0] <- "CUPONES DCTO";                
	arreglo[1] <- "BeneficiosCiudadano";              
	arreglo[2] <- "OTROS";             
	
	
	Escribir "Casilla 1: ", arreglo[0]; 
	Escribir "Casilla 2: ", arreglo[1]; 
	Escribir "Casilla 3: ", arreglo[2]; 
	
		
		definir precio_original como real;
		definir cupon como real;
		definir valor_iva como real;
		definir descuento_cantidad como real;
		definir costo_envio como real;
		definir kilos como entero;
		definir valor_kilo como entero;
		definir descuento como real;
		definir iva como real;
		definir cantidad como real;
		definir envio como real;
		definir precio_final Como Real;
		definir tiene_cupon como logico;
		definir nacionalidad Como Caracter;
	
		
		
		
		
		
		precio_original<- 100;
		cupon<-0.10;
		valor_iva<- 1.12;
		descuento_cantidad<- 0.05;
		costo_envio<- 10;
		kilos<- 3;
		valor_kilo<- 2;
		tiene_cupon<- Verdadero;
		nacionalidad<-"chile";
		
		//Operadores aritm�ticos
		//calculo para el descuento
		
		descuento<- precio_original-(precio_original*cupon);
		
		//calcular iva
		
		iva<- descuento*valor_iva;
		
		//descuento x cantidad de articulos
		
		cantidad<-iva-(iva*descuento_cantidad);
		
		//costo de envio
		
		envio<- costo_envio+(valor_kilo*kilos);
		
		//costo final
		
		precio_final<-envio+(cantidad*2);
		
		// Mostrar resultados
		Escribir "__________________________________________";
		Escribir "El precio original del producto es: ", precio_original;
		Escribir "El precio final del producto es: ", precio_final;
		Escribir "__________________________________________";
		
		// Porcentajes desglosados
		Escribir "Desglose del precio final del producto:";
		Escribir "Precio original: ", precio_original;
		Escribir "Descuento por cup�n (10%): ", descuento;
		Escribir "IVA (12%): ", IVA;
		Escribir "Descuento por cantidad (5%): ", descuento_cantidad;
		Escribir "Costo de env�o: ", envio;
		Escribir "-----------------------------";
		Escribir "Precio final del producto: ", precio_final;
		
		//Programa de descuentos especiales
		//Operador condicional l�gico
		//Solo si el cliente tiene cupon, se hace descuento
		
		Escribir "�Tiene ud cup�n de descuento? (verdadero o falso) "; 
		leer tiene_cupon;
		si tiene_cupon entonces
			Escribir "El precio total quedar�a en : ", descuento, ".000";
			descuento <- precio_original * cupon; 
		finsi
		
		//Operador de comparaci�n, si la nacionalidad es chilena, aplicar 10% de descuento adicional
		
		Escribir "�Pa�s de residencia?";
		leer nacionalidad;
		
		Si nacionalidad == "chile" Entonces
			Escribir  "ud tiene un : ", precio_original * 0.10, "% de rebaja adicional por tener nacionalidad chilena";
		Sino
			Escribir  "lo sentimos, no tiene descuento adicional"; 
		Fin Si
		
		//bucles para descuentos especiales al usuario
		Escribir "por la compra de 1 o 2 art�culos ud puede ganar o un art�culo gratis o cupones de descuento";
		Escribir "�Cu�ntos art�culos desea llevar?";
		Leer cantidad;
		
		Mientras cantidad < 1 O cantidad > 2 Hacer
			Escribir "Nuestras promociones solo aplican para 1 o 2 art�culos. Intente de nuevo.";
			Leer cantidad;
		FinMientras
		
		Segun cantidad Hacer
			1:
				Escribir "Usted se lleva 1 art�culo gratis.";
			2:
				Escribir "Usted se lleva 3 cupones de descuento para sus pr�ximas compras.";
			
				//no fue necesario poner un "de otro modo" ya que si son m�s de 2 art�culos, me devuelve al bucle mientras
		FinSegun
		
		
		
		
		
		
		
	

FinProceso
