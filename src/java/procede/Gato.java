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
public class Gato extends Animal {

    protected String toxoplasmosis;

    public Gato() {
    }

    public Gato(String tipo, String nombre, String raza, String color, int edad, String otro) {
        super(tipo, nombre, raza, color, edad);
        this.toxoplasmosis = otro;
    }
    
    public String getToxoplasmosis() {
        return toxoplasmosis;
    }

    public void setToxoplasmosis(String toxoplasmosis) {
        this.toxoplasmosis = toxoplasmosis;
    }



}
