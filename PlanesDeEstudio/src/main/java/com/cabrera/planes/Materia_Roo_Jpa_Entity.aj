// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Materia;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Materia_Roo_Jpa_Entity {
    
    declare @type: Materia: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Materia.id;
    
    @Version
    @Column(name = "version")
    private Integer Materia.version;
    
    public Long Materia.getId() {
        return this.id;
    }
    
    public void Materia.setId(Long id) {
        this.id = id;
    }
    
    public Integer Materia.getVersion() {
        return this.version;
    }
    
    public void Materia.setVersion(Integer version) {
        this.version = version;
    }
    
}
