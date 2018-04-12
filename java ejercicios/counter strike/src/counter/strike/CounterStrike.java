
package counter.strike;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author usuario
 */
public class CounterStrike {
    // Ejercicio de bomba
    
    public static void main(String[] args) {
        Scanner lectura = new Scanner(System.in);
        int horas, minutos, segundos, tiempototal;
        
        do{
        System.out.print ("Ingrese horas para la detonacion: ");
        horas = lectura.nextInt();
        }while (!(horas>=0));
        do{
        System.out.print ("Ingrese minutos para la detonacion: ");
        minutos = lectura.nextInt();
        }while (!(minutos<60 && minutos>=0));
        do{
        System.out.print ("Ingrese segundos para la detonacion: ");
        segundos = lectura.nextInt();
        }while (!(segundos<60 && minutos>=0));
        tiempototal = segundos + minutos * 60 + horas * 60 * 60;
        
        System.out.println ("el tiempo para detonacion es de " + tiempototal + " segundos");
        int i;
        
        for (i = tiempototal; i>0; i--){
            System.out.println (i);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ex) {
                Logger.getLogger(CounterStrike.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    
        System.out.println("bum!");
    }
    
}
