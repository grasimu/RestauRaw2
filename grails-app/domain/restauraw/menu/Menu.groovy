package restauraw.menu

class Menu {
    String name
    String info

    static hasMany = [categorys:Category]

    static constraints = {
        name()
        info()
    }
}
