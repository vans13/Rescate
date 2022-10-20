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
public class Perro extends Animal {

    protected String nivelEntrenamiento;

    public Perro() {
    }

    public Perro(String tipo, String nombre, String raza, String color, int edad, String otro) {
        super(tipo,nombre, raza, color, edad);
        this.nivelEntrenamiento = otro;
    }

    public String getNivelEntrenamiento() {
        return nivelEntrenamiento;
    }

    public void setNivelEntrenamiento(String nivelEntrenamiento) {
        this.nivelEntrenamiento = nivelEntrenamiento;
    }



}
