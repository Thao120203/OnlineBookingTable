package com.demo.entities;
// Generated Mar 4, 2024, 11:56:23 AM by Hibernate Tools 4.3.6.Final

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.*;

/**
 * CategoryFood generated by hbm2java
 */
@Entity
@Table(name = "category_food")
public class CategoryFood implements java.io.Serializable {

	private Integer id;
	private String name;
	private Set<Menu> menus = new HashSet<Menu>(0);

	public CategoryFood() {
	}

	public CategoryFood(String name) {
		this.name = name;
	}

	public CategoryFood(String name, Set<Menu> menus) {
		this.name = name;
		this.menus = menus;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "categoryFood")
	public Set<Menu> getMenus() {
		return this.menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}

}