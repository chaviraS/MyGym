package mygym





class MemberHealth {
	
	String tipoSangre
	String alergico
	String operaciones
	String  respiratorias
	String cardiologia
	String enfermedades
	String medicado
	String contactoEmergencia  
	Member member
	
	
	
	
    static constraints = {
	
		 tipoSangre(inList : ["AB+" , "AB-" , "A+" , "A-" ,"B+" ,"B-" , "0+" , "O-" ])
		 alergico()
		 operaciones()
		 respiratorias()
		 cardiologia()
		 enfermedades()
		 medicado(inList : ["SI" , "NO"])
		 contactoEmergencia()
    }
	

}
