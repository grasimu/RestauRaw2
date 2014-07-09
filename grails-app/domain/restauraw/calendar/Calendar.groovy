package restauraw.calendar

class Calendar {
    int year;

    static hasMany = [days:Day]

    static constraints = {
        year(unique: true, min: 2000, max: 3000)
        days(minSize:1,maxSize:345)
    }
}
