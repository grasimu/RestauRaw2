package restauraw.calendar

class Event {
    String name
    String starttime
    String info
    int duration

    static belongsTo = [day:Day]

    static constraints = {
        name()
        info()
        starttime()
        duration(min:0, max:86400) //Durations max is a day
    }
}
