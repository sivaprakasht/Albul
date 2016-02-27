// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.albul.model;

import com.albul.model.LeadAccount;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LeadAccount_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LeadAccount.entityManager;
    
    public static final List<String> LeadAccount.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager LeadAccount.entityManager() {
        EntityManager em = new LeadAccount().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LeadAccount.countLeadAccounts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LeadAccount o", Long.class).getSingleResult();
    }
    
    public static List<LeadAccount> LeadAccount.findAllLeadAccounts() {
        return entityManager().createQuery("SELECT o FROM LeadAccount o", LeadAccount.class).getResultList();
    }
    
    public static List<LeadAccount> LeadAccount.findAllLeadAccounts(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LeadAccount o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LeadAccount.class).getResultList();
    }
    
    public static LeadAccount LeadAccount.findLeadAccount(Long id) {
        if (id == null) return null;
        return entityManager().find(LeadAccount.class, id);
    }
    
    public static List<LeadAccount> LeadAccount.findLeadAccountEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LeadAccount o", LeadAccount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LeadAccount> LeadAccount.findLeadAccountEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LeadAccount o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LeadAccount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LeadAccount.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LeadAccount.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LeadAccount attached = LeadAccount.findLeadAccount(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LeadAccount.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LeadAccount.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LeadAccount LeadAccount.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LeadAccount merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}