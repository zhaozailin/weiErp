// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.zzl.weierp.domain.consumer;

import com.zzl.weierp.domain.consumer.Consumer;
import com.zzl.weierp.domain.consumer.ConsumerBank;
import com.zzl.weierp.domain.consumer.ConsumerDetail;
import java.util.Date;

privileged aspect Consumer_Roo_JavaBean {
    
    public String Consumer.getUsername() {
        return this.username;
    }
    
    public void Consumer.setUsername(String username) {
        this.username = username;
    }
    
    public String Consumer.getPassword() {
        return this.password;
    }
    
    public void Consumer.setPassword(String password) {
        this.password = password;
    }
    
    public String Consumer.getShareSerial() {
        return this.shareSerial;
    }
    
    public void Consumer.setShareSerial(String shareSerial) {
        this.shareSerial = shareSerial;
    }
    
    public String Consumer.getSerial() {
        return this.serial;
    }
    
    public void Consumer.setSerial(String serial) {
        this.serial = serial;
    }
    
    public ConsumerBank Consumer.getBank() {
        return this.bank;
    }
    
    public void Consumer.setBank(ConsumerBank bank) {
        this.bank = bank;
    }
    
    public ConsumerDetail Consumer.getDetail() {
        return this.detail;
    }
    
    public void Consumer.setDetail(ConsumerDetail detail) {
        this.detail = detail;
    }
    
    public int Consumer.getDegree() {
        return this.degree;
    }
    
    public void Consumer.setDegree(int degree) {
        this.degree = degree;
    }
    
    public Date Consumer.getJoinDate() {
        return this.joinDate;
    }
    
    public void Consumer.setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }
    
    public Date Consumer.getCreateDate() {
        return this.createDate;
    }
    
    public void Consumer.setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    
}