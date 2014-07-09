package restauraw.menu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DailyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Daily.list(params), model:[dailyInstanceCount: Daily.count()]
    }

    def show(Daily dailyInstance) {
        respond dailyInstance
    }

    def create() {
        respond new Daily(params)
    }

    @Transactional
    def save(Daily dailyInstance) {
        if (dailyInstance == null) {
            notFound()
            return
        }

        if (dailyInstance.hasErrors()) {
            respond dailyInstance.errors, view:'create'
            return
        }

        dailyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'daily.label', default: 'Daily'), dailyInstance.id])
                redirect dailyInstance
            }
            '*' { respond dailyInstance, [status: CREATED] }
        }
    }

    def edit(Daily dailyInstance) {
        respond dailyInstance
    }

    @Transactional
    def update(Daily dailyInstance) {
        if (dailyInstance == null) {
            notFound()
            return
        }

        if (dailyInstance.hasErrors()) {
            respond dailyInstance.errors, view:'edit'
            return
        }

        dailyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Daily.label', default: 'Daily'), dailyInstance.id])
                redirect dailyInstance
            }
            '*'{ respond dailyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Daily dailyInstance) {

        if (dailyInstance == null) {
            notFound()
            return
        }

        dailyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Daily.label', default: 'Daily'), dailyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'daily.label', default: 'Daily'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
