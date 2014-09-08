package mygym

class Ejercicio {
	
	String ejercicio
	String series
	String repeticiones

    static constraints = {
		ejercicio()
		series()
		repeticiones()
    }
	
	static belongsTo = [rutina : Rutina]
}
