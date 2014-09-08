package mygym

class Pagos {

  	String concepto
	Integer monto
	

    static constraints = {
		
		concepto(inList : ["INSCRIPCION" , "MENSUALIDAD" , "ANUALIDAD"])
		monto()
    }
	
	static belongsTo = [member: Member]
}
