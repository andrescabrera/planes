// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Provincia;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Provincia_Roo_Jpa_Entity {
    
    declare @type: Provincia: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Provincia.id;
    
    @Version
    @Column(name = "version")
    private Integer Provincia.version;
    
    public Long Provincia.getId() {
        return this.id;
    }
    
    public void Provincia.setId(Long id) {
        this.id = id;
    }
    
    public Integer Provincia.getVersion() {
        return this.version;
    }
    
    public void Provincia.setVersion(Integer version) {
        this.version = version;
    }
    
}
