package restauraw.calendar

class Reservation {
    String name
    String phonenumber
    String time
    int table

    static belongsTo = [day:Day]

    static constraints = {
        table(min: 1, max: 50)
    }
}
