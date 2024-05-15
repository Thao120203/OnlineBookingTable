package com.demo.entities;
// Generated Mar 8, 2024, 2:17:53 PM by Hibernate Tools 4.3.6.Final


import jakarta.persistence.*;
/**
 * Ratings generated by hbm2java
 */
@Entity
@Table(name = "ratings")
public class Ratings implements java.io.Serializable {

	private Integer id;
	private Menu menu;
	private int rating;
	private int numberRating;

	public Ratings() {
	}

	public Ratings(Menu menu, int rating, int numberRating) {
		this.menu = menu;
		this.rating = rating;
		this.numberRating = numberRating;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "menu_id", nullable = false)
	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	@Column(name = "rating", nullable = false)
	public int getRating() {
		return this.rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Column(name = "number_rating", nullable = false)
	public int getNumberRating() {
		return this.numberRating;
	}

	public void setNumberRating(int numberRating) {
		this.numberRating = numberRating;
	}

}
