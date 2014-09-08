import com.mygym.auth.*;

class BootStrap {
	
	

    def init = { servletContext ->
		
		def adminRole = Role.findOrSaveWhere(authority :'ROLE_ADMIN')
		def user = User.findOrSaveWhere(username :'admin' , password : 'root')
		
		if(!user.authorities.equals(adminRole)){
			UserRole.create(user, adminRole, true)
			
		}
    }
    def destroy = {
    }
}
