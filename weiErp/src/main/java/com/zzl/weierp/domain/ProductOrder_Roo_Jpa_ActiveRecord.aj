// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.zzl.weierp.domain;

import com.zzl.weierp.domain.ProductOrder;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductOrder_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ProductOrder.entityManager;
    
    public static final EntityManager ProductOrder.entityManager() {
        EntityManager em = new ProductOrder().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ProductOrder.countProductOrders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ProductOrder o", Long.class).getSingleResult();
    }
    
    public static List<ProductOrder> ProductOrder.findAllProductOrders() {
        return entityManager().createQuery("SELECT o FROM ProductOrder o", ProductOrder.class).getResultList();
    }
    
    public static ProductOrder ProductOrder.findProductOrder(Long id) {
        if (id == null) return null;
        return entityManager().find(ProductOrder.class, id);
    }
    
    public static List<ProductOrder> ProductOrder.findProductOrderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ProductOrder o", ProductOrder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ProductOrder.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ProductOrder.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ProductOrder attached = ProductOrder.findProductOrder(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ProductOrder.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ProductOrder.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ProductOrder ProductOrder.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ProductOrder merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}