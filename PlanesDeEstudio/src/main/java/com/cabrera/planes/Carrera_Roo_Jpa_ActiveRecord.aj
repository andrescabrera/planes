// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Carrera;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Carrera_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Carrera.entityManager;
    
    public static final EntityManager Carrera.entityManager() {
        EntityManager em = new Carrera().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Carrera.countCarreras() {
        return entityManager().createQuery("SELECT COUNT(*) FROM Carrera o", Long.class).getSingleResult();
    }
    
    public static List<Carrera> Carrera.findAllCarreras() {
        return entityManager().createQuery("SELECT o FROM Carrera o", Carrera.class).getResultList();
    }
    
    public static Carrera Carrera.findCarrera(Long id) {
        if (id == null) return null;
        return entityManager().find(Carrera.class, id);
    }
    
    public static List<Carrera> Carrera.findCarreraEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Carrera o", Carrera.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Carrera.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Carrera.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Carrera attached = Carrera.findCarrera(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Carrera.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Carrera.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Carrera Carrera.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Carrera merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
