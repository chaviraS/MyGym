package mygym



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured;

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class MemberHealthController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MemberHealth.list(params), model:[memberHealthInstanceCount: MemberHealth.count()]
    }

    def show(MemberHealth memberHealthInstance) {
        respond memberHealthInstance
    }

    def create() {
        respond new MemberHealth(params)
    }

    @Transactional
    def save(MemberHealth memberHealthInstance) {
        if (memberHealthInstance == null) {
            notFound()
            return
        }

        if (memberHealthInstance.hasErrors()) {
            respond memberHealthInstance.errors, view:'create'
            return
        }

        memberHealthInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'memberHealth.label', default: 'MemberHealth'), memberHealthInstance.id])
                redirect memberHealthInstance
            }
            '*' { respond memberHealthInstance, [status: CREATED] }
        }
    }

    def edit(MemberHealth memberHealthInstance) {
        respond memberHealthInstance
    }

    @Transactional
    def update(MemberHealth memberHealthInstance) {
        if (memberHealthInstance == null) {
            notFound()
            return
        }

        if (memberHealthInstance.hasErrors()) {
            respond memberHealthInstance.errors, view:'edit'
            return
        }

        memberHealthInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MemberHealth.label', default: 'MemberHealth'), memberHealthInstance.id])
                redirect memberHealthInstance
            }
            '*'{ respond memberHealthInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MemberHealth memberHealthInstance) {

        if (memberHealthInstance == null) {
            notFound()
            return
        }

        memberHealthInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MemberHealth.label', default: 'MemberHealth'), memberHealthInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberHealth.label', default: 'MemberHealth'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
