package model;

public enum TypeGenre {
	ALL_GENRE("Todos los géneros"),
	ACTION("Acción/Aventuras "),
	SCIENCE("Ciencia Ficción/Fantástico"),
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

	public String getDescription() {
		return description;
	}

}
