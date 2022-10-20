/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package procede;

/**
 *
 * @author lenovo
 */
public class Animal{

//Atributos de la clase
    private String tipo;
    protected String nombre;
    protected String raza;
    protected String color;
    protected int edad;


//Constructor de la clase
    public Animal() {

    }
    
    
//Constructor sobrecargado

    public Animal(String tipo,String nombre, String raza, String color, int edad) {
        this.tipo=tipo;
        this.nombre = nombre;
        this.raza = raza;
        this.color = color;
        this.edad = edad;
    }
    

//Métodos de Encapsulamiento

     public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

public int edades(){
    int edades=0;
    edades+=getEdad();
    return edades;
}
public float edadesPromedio(int div){
    float promedio;
    promedio=edades()/div;
    return promedio;
}


}
