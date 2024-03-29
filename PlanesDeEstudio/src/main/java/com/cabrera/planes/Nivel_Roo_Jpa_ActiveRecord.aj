// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Nivel;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Nivel_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Nivel.entityManager;
    
    public static final EntityManager Nivel.entityManager() {
        EntityManager em = new Nivel().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Nivel.countNivels() {
        return entityManager().createQuery("SELECT COUNT(*) FROM Nivel o", Long.class).getSingleResult();
    }
    
    public static List<Nivel> Nivel.findAllNivels() {
        return entityManager().createQuery("SELECT o FROM Nivel o", Nivel.class).getResultList();
    }
    
    public static Nivel Nivel.findNivel(Long id) {
        if (id == null) return null;
        return entityManager().find(Nivel.class, id);
    }
    
    public static List<Nivel> Nivel.findNivelEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Nivel o", Nivel.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Nivel.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Nivel.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Nivel attached = Nivel.findNivel(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Nivel.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Nivel.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Nivel Nivel.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Nivel merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
