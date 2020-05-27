package com.java.ecommerce.entitys;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int categoryId;
	private String categoryTittle;
	private String categoryDiscription;
	@OneToMany(mappedBy ="category")
	private List<Product> product = new ArrayList<Product>();
	
public Category() {
	
}

public Category(String categoryTittle,String categoryDiscription, List<Product> product) {
	super();
	this.categoryTittle = categoryTittle;
	this.categoryDiscription=categoryDiscription;
	this.product = product;
}

public Category(int categoryId, String categoryTittle, String categoryDiscription, List<Product> product) {
	super();
	this.categoryId = categoryId;
	this.categoryTittle = categoryTittle;
	this.categoryDiscription=categoryDiscription;
	this.product = product;
}

public int getCategoryId() {
	return categoryId;
}

public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}

public String getCategoryTittle() {
	return categoryTittle;
}

public void setCategoryTittle(String categoryTittle) {
	this.categoryTittle = categoryTittle;
}

public String getCategoryDiscription() {
	return categoryDiscription;
}

public void setCategoryDiscription(String categoryDiscription) {
	this.categoryDiscription = categoryDiscription;
}

public List<Product> getProduct() {
	return product;
}

public void setProduct(List<Product> product) {
	this.product = product;
}

@Override
public String toString() {
	return "Category [categoryId=" + categoryId + ", categoryTittle=" + categoryTittle + ", categoryDiscription="
			+ categoryDiscription + ", product=" + product + "]";
}



}
