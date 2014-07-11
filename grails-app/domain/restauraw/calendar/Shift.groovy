package restauraw.calendar
import restauraw.staff.Employee

class Shift {
    ShiftTime shiftTime

    static belongsTo = [day:Day]


    enum ShiftTime{
        EARLY, NORMAL, LATE
    }

    static constraints = {
    }
}
