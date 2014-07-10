package restauraw.menu

class Category {
    String name
    String info

    static hasMany = [sets:SetMeal]

    static constraints = {
        name()
        info()
    }

    @Override
    String toString() {
        return name
    }
}
