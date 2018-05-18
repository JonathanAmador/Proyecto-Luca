package model;

public enum TypeGenre {
	
	ACTION("Acción/Aventuras "),
	CIENCE("Ciencia Ficción/Fantástico"),
	COMEDY("Comedia"),
	DRAMA("Drama"),
	ANIMATION("Animación"),
	TERROR("Terror"),
	THRILLER("Thriller"),
	DOCUMENTARY("Documental");
	
	private final String description;
	
	private TypeGenre(String description){
		this.description = description;
	}

}
