package restauraw.calendar
import restauraw.menu.Daily

import java.text.SimpleDateFormat

class Day {
    Date date

    static belongsTo = [calendar: Calendar]
    static hasOne = [daily:Daily]
    static hasMany = [reservations:Reservation,events:Event,shifts:Shift]


    static constraints = {
        reservations(minSize: 0, maxSize: 50)
        daily(nullable: true)
        events(minSize: 0, maxSize: 20)
        shifts(minSize: 0, maxSize: 3)
    }

    @Override
    String toString() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(date)
    }
}
