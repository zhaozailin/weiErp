// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.zzl.weierp.domain.manager;

import com.zzl.weierp.domain.manager.Manager;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Manager_Roo_Finder {
    
    public static TypedQuery<Manager> Manager.findManagersBySerialEquals(String serial) {
        if (serial == null || serial.length() == 0) throw new IllegalArgumentException("The serial argument is required");
        EntityManager em = Manager.entityManager();
        TypedQuery<Manager> q = em.createQuery("SELECT o FROM Manager AS o WHERE o.serial = :serial", Manager.class);
        q.setParameter("serial", serial);
        return q;
    }
    
}
