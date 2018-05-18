package model;

public class Film {
private String tittle;
private String director;
private String synopsis;
private float price;
private int year;
private TypeGenre genre;
private String image;
public Film() {
	super();
}
public Film(String tittle, String director, String synopsis, float price, int year, TypeGenre genre, String image) {
	super();
	this.tittle = tittle;
	this.director = director;
	this.synopsis = synopsis;
	this.price = price;
	this.year = year;
	this.genre = genre;
	this.image = image;
}
public String getTittle() {
	return tittle;
}
public void setTittle(String tittle) {
	this.tittle = tittle;
}
public String getDirector() {
	return director;
}
public void setDirector(String director) {
	this.director = director;
}
public String getSynopsis() {
	return synopsis;
}
public void setSynopsis(String synopsis) {
	this.synopsis = synopsis;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public int getYear() {
	return year;
}
public void setYear(int year) {
	this.year = year;
}
public TypeGenre getGenre() {
	return genre;
}
public void setGenre(TypeGenre genre) {
	this.genre = genre;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
@Override
public String toString() {
	return "Película\n [ -Título=" + tittle + "\n-Director=" + director + "\n-Sinópsis=" + synopsis + "\n-Precio=" + price
			+ "\n-Año=" + year + "\n-Imagen=" + image + "]";
}

}