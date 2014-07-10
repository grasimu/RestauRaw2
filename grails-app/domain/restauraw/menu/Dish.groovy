package restauraw.menu

class Dish{

    String imgUri = "'../images/food/Spagehtti.jpg'"
    String ingredients
    float price
    String name


    static hasMany = [set:SetMeal]
    static belongsTo = SetMeal

    static constraints = {
        price(blank:false, nullable:false, min:0.0f, scale: 2)
        imgUri  nullable: true
    }

    @Override
    String toString() {
        return name
    }
}
