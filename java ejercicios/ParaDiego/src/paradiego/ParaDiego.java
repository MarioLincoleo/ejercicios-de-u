
package paradiego;

import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ParaDiego {


    public static void main(String[] args) {

        Scanner lectura = new Scanner(System.in);
        int horas, minutos, segundos, tiempoinicial;

        System.out.print("Ingrese segundos para detonacion: ");
        tiempoinicial = lectura.nextInt();

        horas = (int) (tiempoinicial / 3600);
        minutos = (int) ((tiempoinicial - horas * 3600) / 60);
        segundos = (int) (tiempoinicial - horas * 3600 - minutos * 60);
        System.out.println(horas + " hora(s)");
        System.out.println(minutos + " minuto(s)");
        System.out.println(segundos + " segundo(s)");

        do {
            do {
                
                System.out.println(horas + "  " + minutos + "  " + segundos);
                segundos = segundos -1;
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(ParaDiego.class.getName()).log(Level.SEVERE, null, ex);

                }
            } while (segundos >= 0);
            segundos = 59;
            minutos = minutos - 1;
            if (minutos < 0) {
                minutos = 59;
                horas = horas - 1;
            }

        } while (horas>=0);
        
        System.out.println("kablamo!!");
    }

}
