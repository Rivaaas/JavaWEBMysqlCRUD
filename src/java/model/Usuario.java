/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rivaa
 */
public class Usuario {
    
    

    public Usuario() {
    }

    public Usuario(int id, String rut, String nombre, String pass) {
        this.id = id;
        this.rut = rut;
        this.nombre = nombre;
        this.pass = pass;
    }
    
    
    
    
    private int id;
    private String rut,nombre,pass;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
    
    
}
