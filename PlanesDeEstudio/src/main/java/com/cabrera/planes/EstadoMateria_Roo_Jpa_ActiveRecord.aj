// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.EstadoMateria;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EstadoMateria_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager EstadoMateria.entityManager;
    
    public static final EntityManager EstadoMateria.entityManager() {
        EntityManager em = new EstadoMateria().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EstadoMateria.countEstadoMaterias() {
        return entityManager().createQuery("SELECT COUNT(*) FROM EstadoMateria o", Long.class).getSingleResult();
    }
    
    public static List<EstadoMateria> EstadoMateria.findAllEstadoMaterias() {
        return entityManager().createQuery("SELECT o FROM EstadoMateria o", EstadoMateria.class).getResultList();
    }
    
    public static EstadoMateria EstadoMateria.findEstadoMateria(Long id) {
        if (id == null) return null;
        return entityManager().find(EstadoMateria.class, id);
    }
    
    public static List<EstadoMateria> EstadoMateria.findEstadoMateriaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM EstadoMateria o", EstadoMateria.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void EstadoMateria.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EstadoMateria.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EstadoMateria attached = EstadoMateria.findEstadoMateria(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EstadoMateria.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EstadoMateria.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EstadoMateria EstadoMateria.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EstadoMateria merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}