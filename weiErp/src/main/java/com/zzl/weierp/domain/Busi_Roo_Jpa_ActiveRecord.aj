// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.zzl.weierp.domain;

import com.zzl.weierp.domain.Busi;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Busi_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Busi.entityManager;
    
    public static final EntityManager Busi.entityManager() {
        EntityManager em = new Busi().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Busi.countBusis() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Busi o", Long.class).getSingleResult();
    }
    
    public static List<Busi> Busi.findAllBusis() {
        return entityManager().createQuery("SELECT o FROM Busi o", Busi.class).getResultList();
    }
    
    public static Busi Busi.findBusi(Long id) {
        if (id == null) return null;
        return entityManager().find(Busi.class, id);
    }
    
    public static List<Busi> Busi.findBusiEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Busi o", Busi.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Busi.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Busi.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Busi attached = Busi.findBusi(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Busi.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Busi.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Busi Busi.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Busi merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}