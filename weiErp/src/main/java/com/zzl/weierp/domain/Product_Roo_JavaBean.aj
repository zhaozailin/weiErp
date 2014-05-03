// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.zzl.weierp.domain;

import com.zzl.weierp.domain.Product;
import com.zzl.weierp.domain.ProductImage;
import com.zzl.weierp.domain.ProductType;
import java.util.Set;

privileged aspect Product_Roo_JavaBean {
    
    public String Product.getName() {
        return this.name;
    }
    
    public void Product.setName(String name) {
        this.name = name;
    }
    
    public String Product.getDescription() {
        return this.description;
    }
    
    public void Product.setDescription(String description) {
        this.description = description;
    }
    
    public double Product.getPrice() {
        return this.price;
    }
    
    public void Product.setPrice(double price) {
        this.price = price;
    }
    
    public String Product.getStandard() {
        return this.standard;
    }
    
    public void Product.setStandard(String standard) {
        this.standard = standard;
    }
    
    public ProductType Product.getType() {
        return this.type;
    }
    
    public void Product.setType(ProductType type) {
        this.type = type;
    }
    
    public String Product.getSerial() {
        return this.serial;
    }
    
    public void Product.setSerial(String serial) {
        this.serial = serial;
    }
    
    public Set<ProductImage> Product.getImages() {
        return this.images;
    }
    
    public void Product.setImages(Set<ProductImage> images) {
        this.images = images;
    }
    
    public String Product.getMainImage() {
        return this.mainImage;
    }
    
    public void Product.setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }
    
}
