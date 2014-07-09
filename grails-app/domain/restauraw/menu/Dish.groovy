package restauraw.menu

class Dish{

    String ingredients
    float price
    String name

    static belongsTo = [set:SetMeal]

    static constraints = {
        price(blank:false, nullable:false, min:0.0f, scale: 2)
    }

    @Override
    String toString() {
        return name
    }
}
