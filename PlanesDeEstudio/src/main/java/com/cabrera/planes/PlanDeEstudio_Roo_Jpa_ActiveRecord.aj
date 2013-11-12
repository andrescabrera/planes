// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.PlanDeEstudio;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PlanDeEstudio_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PlanDeEstudio.entityManager;
    
    public static final EntityManager PlanDeEstudio.entityManager() {
        EntityManager em = new PlanDeEstudio().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PlanDeEstudio.countPlanDeEstudios() {
        return entityManager().createQuery("SELECT COUNT(*) FROM PlanDeEstudio o", Long.class).getSingleResult();
    }
    
    public static List<PlanDeEstudio> PlanDeEstudio.findAllPlanDeEstudios() {
        return entityManager().createQuery("SELECT o FROM PlanDeEstudio o", PlanDeEstudio.class).getResultList();
    }
    
    public static PlanDeEstudio PlanDeEstudio.findPlanDeEstudio(Long id) {
        if (id == null) return null;
        return entityManager().find(PlanDeEstudio.class, id);
    }
    
    public static List<PlanDeEstudio> PlanDeEstudio.findPlanDeEstudioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PlanDeEstudio o", PlanDeEstudio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PlanDeEstudio.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PlanDeEstudio.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PlanDeEstudio attached = PlanDeEstudio.findPlanDeEstudio(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PlanDeEstudio.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PlanDeEstudio.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PlanDeEstudio PlanDeEstudio.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PlanDeEstudio merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
