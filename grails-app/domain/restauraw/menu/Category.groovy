package restauraw.menu

class Category {
    String name
    String info

    static hasMany = [sets:SetMeal]

    static constraints = {
    }

    @Override
    String toString() {
        return name
    }
}
