// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Estudiante;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Estudiante_Roo_Jpa_Entity {
    
    declare @type: Estudiante: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Estudiante.id;
    
    @Version
    @Column(name = "version")
    private Integer Estudiante.version;
    
    public Long Estudiante.getId() {
        return this.id;
    }
    
    public void Estudiante.setId(Long id) {
        this.id = id;
    }
    
    public Integer Estudiante.getVersion() {
        return this.version;
    }
    
    public void Estudiante.setVersion(Integer version) {
        this.version = version;
    }
    
}
