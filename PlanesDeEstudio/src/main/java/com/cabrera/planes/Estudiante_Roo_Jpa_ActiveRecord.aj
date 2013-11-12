// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Estudiante;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Estudiante_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Estudiante.entityManager;
    
    public static final EntityManager Estudiante.entityManager() {
        EntityManager em = new Estudiante().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Estudiante.countEstudiantes() {
        return entityManager().createQuery("SELECT COUNT(*) FROM Estudiante o", Long.class).getSingleResult();
    }
    
    public static List<Estudiante> Estudiante.findAllEstudiantes() {
        return entityManager().createQuery("SELECT o FROM Estudiante o", Estudiante.class).getResultList();
    }
    
    public static Estudiante Estudiante.findEstudiante(Long id) {
        if (id == null) return null;
        return entityManager().find(Estudiante.class, id);
    }
    
    public static List<Estudiante> Estudiante.findEstudianteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Estudiante o", Estudiante.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Estudiante.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Estudiante.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Estudiante attached = Estudiante.findEstudiante(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Estudiante.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Estudiante.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Estudiante Estudiante.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Estudiante merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
