package restauraw.staff

import restauraw.ShiroUser
import restauraw.calendar.Shift

class Employee extends ShiroUser {

    String name;
    Job job;

    enum Job{
        COOK, WAITER, WASHER, CLEANER, DELIVERER, COORDINATOR
    }

    static hasMany = [shifts:Shift]
    
    static constraints = {
        name()
        job()
    }
}
