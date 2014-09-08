package mygym

class Member {

	String  noSocio
	String	nombre
	String	apellidoP
	String	apellidoM
	String	sexo
	String	telefono
	String	celular
	String	direccion
	String	email
	String	cumpleanos
	Rutina rutina

	
	




	static constraints = {

		noSocio()
		nombre()
		apellidoP()
		apellidoM()
		sexo(inList: ["M", "F"])
		telefono()
		celular()
		direccion()
		email()
		cumpleanos()
	}

	static hasOne = [health: MemberHealth ]
	//static belongsTo = {instructor : Instructor }
	static hasMany = [pagos: Pagos]
	

	static transients = [ 'nameAndApellidos' ]

	public String getNameAndApellidos() {
		return "$nombre, $apellidoP , $apellidoM"
	}


}
