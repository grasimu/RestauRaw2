package restauraw.calendar

class Reservation {
    String name
    String phonenumber
    String time
    int people

    static belongsTo = [day:Day]

    static constraints = {
        name()
        phonenumber()
        time()
        people(min: 1, max: 50)
    }
}
