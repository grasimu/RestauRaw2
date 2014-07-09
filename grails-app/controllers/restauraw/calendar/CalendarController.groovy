package restauraw.calendar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CalendarController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Calendar.list(params), model:[calendarInstanceCount: Calendar.count()]
    }

    def show(Calendar calendarInstance) {
        respond calendarInstance
    }

    def create() {
        respond new Calendar(params)
    }

    @Transactional
    def save(Calendar calendarInstance) {
        if (calendarInstance == null) {
            notFound()
            return
        }

        if (calendarInstance.hasErrors()) {
            respond calendarInstance.errors, view:'create'
            return
        }

        calendarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'calendar.label', default: 'Calendar'), calendarInstance.id])
                redirect calendarInstance
            }
            '*' { respond calendarInstance, [status: CREATED] }
        }
    }

    def edit(Calendar calendarInstance) {
        respond calendarInstance
    }

    @Transactional
    def update(Calendar calendarInstance) {
        if (calendarInstance == null) {
            notFound()
            return
        }

        if (calendarInstance.hasErrors()) {
            respond calendarInstance.errors, view:'edit'
            return
        }

        calendarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Calendar.label', default: 'Calendar'), calendarInstance.id])
                redirect calendarInstance
            }
            '*'{ respond calendarInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Calendar calendarInstance) {

        if (calendarInstance == null) {
            notFound()
            return
        }

        calendarInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Calendar.label', default: 'Calendar'), calendarInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendar.label', default: 'Calendar'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
