package puntos;

import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Scanner;

public class Puntos {

    public static void main(String[] args) {
        
        
        //Truncamiento:
        NumberFormat numberFormat = NumberFormat.getinstance();
        
        numberFormat.setMaximumFractionDigits(2);
        
        numberFormat.setRoundingMode(RoundingMode.DOWN);
        
        
        
        float puntostotales = 0, puntos = 0;
        int numerocompra, valorcompra, codigo, respuesta = 2, respuesta2, compraconpuntos = 0, compra = 0;

        Scanner lectura = new Scanner(System.in);

        do {

            System.out.print("Ingrese numero de productos en esta compra: ");
            numerocompra = lectura.nextInt();

            while (compra < numerocompra) {

                compra++;

                System.out.print("Ingrese valor del producto ($) n° " + compra + ": ");
                valorcompra = lectura.nextInt();

                do {
                    System.out.print("Ingrese codigo del producto n° " + compra + ": ");
                    codigo = lectura.nextInt();
                } while (codigo >= 300 || codigo < 100);

                if (codigo >= 100 && codigo < 200) {
                    if (valorcompra <= 10000) {
                        puntos = (int) puntos + valorcompra / 100;
                    } else {
                        puntos = (int) puntos + valorcompra / 50;
                    }
                } else {
                    if (valorcompra <= 10000) {
                        puntos = (int) puntos + valorcompra / 50;
                    } else {
                        puntos = (int) puntos + valorcompra / 30;
                    }
                }
            }
            if (puntostotales >= puntos) {

                //preguntar si canjear o pagar
                System.out.println("los puntos de esta compra es de: " + puntos);
                System.out.println("Desea cancelar con puntos (puntos disponibles: " + puntostotales + ") ");
                do {
                    System.out.println("1:si, 2:no ");
                    respuesta = lectura.nextInt();
                } while (respuesta != 1 && respuesta != 2);

                if (respuesta == 1) {
                    puntostotales = puntostotales - puntos;
                    compraconpuntos++;
                    System.out.println("los puntos gastados sera de: " + puntos);
                }
            }
            if (puntostotales < puntos || respuesta == 2) {
                puntostotales = puntostotales + puntos;

                System.out.println("Usted acumula " + puntos + " puntos con esta compra");
            }

            System.out.println("Sus puntos hasta el momento seran: " + puntostotales);
            System.out.println("usted ha realizado " + compraconpuntos + " compra de productos con puntos");
            System.out.println("Ingrese si se realizara otra compra");
            do {
                System.out.print("1:si 2:no ");
                respuesta2 = lectura.nextByte();
            } while (respuesta != 1 && respuesta != 2);
            compra = 0;
            puntos = 0;

        } while (respuesta2 == 1);

        System.out.println("Gracias por su compra");
    }
}
