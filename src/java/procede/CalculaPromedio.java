/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package procede;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author lenovo
 */
public class CalculaPromedio implements calcula {

    @Override
    public float[] operacion(ArrayList<Gato> gato, ArrayList<Perro> perro) {
        float[] prom = new float[1];
        int cont = 0;
        int suma = 1;
        if (gato == null && perro == null) {
            prom[0] = 0;
            return prom;
        } else if (gato == null) {
            Iterator it1 = perro.iterator();
            while (it1.hasNext()) {
                Object objeto = it1.next();
                Perro canino = (Perro) objeto;
                cont += canino.getEdad();
            }
            suma = perro.size();
        } else if (perro == null) {
            Iterator it = gato.iterator();
            while (it.hasNext()) {
                Object objeto = it.next();
                Gato felino = (Gato) objeto;
                cont += felino.getEdad();
            }
            suma = gato.size();
        }
        if (perro != null && gato != null) {
            Iterator it = gato.iterator();
            Iterator it1 = perro.iterator();
            //verifica si existe otro elemento con el método hasNext()
            while (it.hasNext()) {
                Object objeto = it.next();
                Gato felino = (Gato) objeto;
                cont += felino.getEdad();
            }
            while (it1.hasNext()) {
                Object objeto = it1.next();
                Perro canino = (Perro) objeto;
                cont += canino.getEdad();
            }
            suma = gato.size() + perro.size();
        }
        prom[0] = cont / suma;

        return prom;
    }

}
