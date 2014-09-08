package mygym



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class PagosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pagos.list(params), model:[pagosInstanceCount: Pagos.count()]
    }

    def show(Pagos pagosInstance) {
        respond pagosInstance
    }

    def create() {
        respond new Pagos(params)
    }

    @Transactional
    def save(Pagos pagosInstance) {
        if (pagosInstance == null) {
            notFound()
            return
        }

        if (pagosInstance.hasErrors()) {
            respond pagosInstance.errors, view:'create'
            return
        }

        pagosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pagos.label', default: 'Pagos'), pagosInstance.id])
                redirect pagosInstance
            }
            '*' { respond pagosInstance, [status: CREATED] }
        }
    }

    def edit(Pagos pagosInstance) {
        respond pagosInstance
    }

    @Transactional
    def update(Pagos pagosInstance) {
        if (pagosInstance == null) {
            notFound()
            return
        }

        if (pagosInstance.hasErrors()) {
            respond pagosInstance.errors, view:'edit'
            return
        }

        pagosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pagos.label', default: 'Pagos'), pagosInstance.id])
                redirect pagosInstance
            }
            '*'{ respond pagosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pagos pagosInstance) {

        if (pagosInstance == null) {
            notFound()
            return
        }

        pagosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pagos.label', default: 'Pagos'), pagosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagos.label', default: 'Pagos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
