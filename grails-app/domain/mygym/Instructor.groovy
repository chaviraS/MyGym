package mygym

class Instructor {
	
	String nombre
	String apellidoP
	String apellidoM
	String turno

	
	

    static constraints = {
		nombre()
		apellidoP()
		apellidoM()
		turno(inList: ["MATUTINO", "VESPERTINO"])
    }
	
	
	
//	static hasMany = [member: Member]
	
	
	
}
