// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Pais;

privileged aspect Pais_Roo_JavaBean {
    
    public String Pais.getNombre() {
        return this.nombre;
    }
    
    public void Pais.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Pais.getCodigo() {
        return this.codigo;
    }
    
    public void Pais.setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
}
