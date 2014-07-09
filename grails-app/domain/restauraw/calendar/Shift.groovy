package restauraw.calendar

class Shift {
    ShiftTime shiftTime

    static belongsTo = [day:Day]


    enum ShiftTime{
        EARLY, NORMAL, LATE
    }

    static constraints = {
    }
}
