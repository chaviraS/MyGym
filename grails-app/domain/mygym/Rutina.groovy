package mygym

class Rutina {
	
	String nombre
	String dias
	String duracion
	String grupomuscular
	

    static constraints = {
		
		nombre()
		dias()
		duracion()
		grupomuscular(inList: ["ANTEBRAZOS", "BICEPS" , "TRICEPS" , "PECHO" , "ESPALDA" , "PIERNA"])
    }
	
	static hasMany = [ejercicio :Ejercicio]
	static hasOne = [member : Member]
}
