// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Carrera;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Carrera_Roo_Jpa_Entity {
    
    declare @type: Carrera: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Carrera.id;
    
    @Version
    @Column(name = "version")
    private Integer Carrera.version;
    
    public Long Carrera.getId() {
        return this.id;
    }
    
    public void Carrera.setId(Long id) {
        this.id = id;
    }
    
    public Integer Carrera.getVersion() {
        return this.version;
    }
    
    public void Carrera.setVersion(Integer version) {
        this.version = version;
    }
    
}