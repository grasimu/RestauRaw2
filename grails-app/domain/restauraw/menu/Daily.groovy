package restauraw.menu

import restauraw.calendar.Day

class Daily extends Category {

    static belongsTo = [day:Day]

    static constraints = {
    }
}
