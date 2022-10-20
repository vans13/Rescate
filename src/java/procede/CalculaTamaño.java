/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package procede;

import java.util.ArrayList;

/**
 *
 * @author lenovo
 */
public class CalculaTamaño implements calcula {

    @Override
    public float[] operacion(ArrayList<Gato> gato, ArrayList<Perro> perro) {
        float[] tamaño = new float[2];
        if (gato == null && perro == null) {
            tamaño[0] = 0;
            tamaño[0] = 0;
        }
        if (perro == null) {
            tamaño[1] = 0;
        }
        if (gato == null) {
            tamaño[0] = 0;
        }
        if (gato != null && perro != null) {
            tamaño[0] = gato.size();
            tamaño[1] = perro.size();
        }
        return tamaño;
    }

}
