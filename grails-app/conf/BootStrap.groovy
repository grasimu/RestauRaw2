import org.apache.shiro.crypto.hash.Sha256Hash
import restauraw.calendar.Day
import restauraw.calendar.Event
import restauraw.calendar.Shift
import restauraw.menu.Dish
import restauraw.menu.Menu
import restauraw.menu.SetMeal
import restauraw.staff.Employee

class BootStrap {

    def init = { servletContext ->

        def user = new Employee(
                username:"user",
                passwordHash: new Sha256Hash("user").toHex(),
                name:"Klaus",
                job: Employee.Job.CLEANER);
        user.save(flush: true, failOnError: true)
        user.addToPermissions("shift:*")


        def admin = new Employee(
                username:"admin",
                passwordHash: new Sha256Hash("admin").toHex(),
                name: "Hans",
                job: Employee.Job.COORDINATOR);
        admin.save(flush: true, failOnError: true)
        admin.addToPermissions("*:*")
//TODO: Gerichte einzeln machen
//TODO: HAuptspeise -> Langstrecke, Vorspeise Kurzstrecke ...
        def dish1 = new Dish(name: "Rasender Roland",imgUri: "../images/food/meat.jpg", ingredients: "Hackfleisch", price: 5.9)
        def dish2 = new Dish(name: "Transrapid", ingredients: "Käse", price: 6.5)
        def dish3 = new Dish(name: "Eiskrem", ingredients: "Erdbeeren", price: 2.2)
        def dish4 = new Dish(name: "Kuchen", ingredients: "Erdbeeren, Sahne", price: 2.7)
        def dish5 = new Dish(name: "Cola", ingredients: "Zucker", price: 1.9)
        def dish6 = new Dish(name: "Nudelsuppe", ingredients: "Nudeln, Suppe", price:3.2)

        def set1 = new SetMeal(name: "Zug", info: "schnell und lecker")
        set1.addToDishes(dish1);

        def set2 = new SetMeal(name: "Der Sonderzug", info: "hmmm")
        set2.addToDishes(dish2).addToDishes(dish4)
        def set3 = new SetMeal(name: "Eis", info: "hmmm")
        set3.addToDishes(dish3)
        def set4 = new SetMeal(name: "Getränk", info: "löscht den Durst")
        set4.addToDishes(dish5)
        def set5 = new SetMeal(name: "Train", info: "dummy")
        set5.addToDishes(dish2)
        def set6 = new SetMeal(name: "CakeShake", info: "dummy")
        set6.addToDishes(dish4)
        def set7 = new SetMeal(name: "Soup", info: "dummy")
        set7.addToDishes(dish6)

        def category1 = new restauraw.menu.Category(name: "Hauptspeisen", info: "optimal für Langstrecke")
        category1.addToSets(set1).addToSets(set2).addToSets(set5)
        def category2 = new restauraw.menu.Category(name: "Nachspeisen", info: "Für den Bahnhof")
        category2.addToSets(set3).addToSets(set6)
        def category3 = new restauraw.menu.Category(name: "Getränke", info: "Durstig?")
        category3.addToSets(set4)
        def category4 = new restauraw.menu.Category(name: "Vorspeisen", info: " das richtige für Kurzstrecke")
        category4.addToSets(set7)

        def menu = new Menu(name: "Speiseka", info: "Unser Bestes").addToCategorys(category3).addToCategorys(category2).addToCategorys(category1).addToCategorys(category4).save(flush: true, failOnError: true)
        def event1 = new Event(name: "Das Große Lokomotiven Fest", info: "Mit volldampf ist die Lokomotive Klaus bei uns zu Gast auf dem Bahnhof und wir Gillen auf dem Heizkessel", duration: 10, starttime: "11:00")


        def shift = new Shift(shiftTime: Shift.ShiftTime.EARLY)
        def day = new Day(date: new Date()).addToShifts(shift).addToEvents(event1)
        def calendar = new restauraw.calendar.Calendar(year: 2014).addToDays(day).save(flush: true, failOnError: true)

        shift.save(flush:true, failOnError: true)
        event1.save(flush:true, failOnError: true)
        day.save(flush: true, failOnError: true)
        category1.save(flush: true, failOnError: true)
        category2.save(flush: true, failOnError: true)
        category3.save(flush: true, failOnError: true)
        category4.save(flush: true, failOnError: true)
        set1.save(flush: true, failOnError: true)
        set2.save(flush: true, failOnError: true)
        set3.save(flush: true, failOnError: true)
        set4.save(flush: true, failOnError: true)
        set5.save(flush: true, failOnError: true)
        set6.save(flush: true, failOnError: true)
        set7.save(flush: true, failOnError: true)
        dish1.save(flush: true, failOnError: true)
        dish2.save(flush: true, failOnError: true)
        dish3.save(flush: true, failOnError: true)
        dish4.save(flush: true, failOnError: true)
        dish5.save(flush: true, failOnError: true)
        dish6.save(flush: true, failOnError: true)





    }
    def destroy = {
    }
}
