// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Pais;
import com.cabrera.planes.Provincia;

privileged aspect Provincia_Roo_JavaBean {
    
    public String Provincia.getNombre() {
        return this.nombre;
    }
    
    public void Provincia.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Provincia.getCodigo() {
        return this.codigo;
    }
    
    public void Provincia.setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
    public Pais Provincia.getPais() {
        return this.pais;
    }
    
    public void Provincia.setPais(Pais pais) {
        this.pais = pais;
    }
    
}
