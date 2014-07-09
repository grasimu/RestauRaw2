package restauraw.menu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SetMealController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SetMeal.list(params), model:[setMealInstanceCount: SetMeal.count()]
    }

    def show(SetMeal setMealInstance) {
        respond setMealInstance
    }

    def create() {
        respond new SetMeal(params)
    }

    @Transactional
    def save(SetMeal setMealInstance) {
        if (setMealInstance == null) {
            notFound()
            return
        }

        if (setMealInstance.hasErrors()) {
            respond setMealInstance.errors, view:'create'
            return
        }

        setMealInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'setMeal.label', default: 'SetMeal'), setMealInstance.id])
                redirect setMealInstance
            }
            '*' { respond setMealInstance, [status: CREATED] }
        }
    }

    def edit(SetMeal setMealInstance) {
        respond setMealInstance
    }

    @Transactional
    def update(SetMeal setMealInstance) {
        if (setMealInstance == null) {
            notFound()
            return
        }

        if (setMealInstance.hasErrors()) {
            respond setMealInstance.errors, view:'edit'
            return
        }

        setMealInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SetMeal.label', default: 'SetMeal'), setMealInstance.id])
                redirect setMealInstance
            }
            '*'{ respond setMealInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SetMeal setMealInstance) {

        if (setMealInstance == null) {
            notFound()
            return
        }

        setMealInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SetMeal.label', default: 'SetMeal'), setMealInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'setMeal.label', default: 'SetMeal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
