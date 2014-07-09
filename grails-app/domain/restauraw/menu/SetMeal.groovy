package restauraw.menu

class SetMeal {
    String info
    String name


    static hasMany = [dishes:Dish]

    static constraints = {
    }

    public getPrice(){
        float sum = 0
        for(Dish d in dishes){
            sum += d.price
        }
        return sum;
    }


    @Override
    public String toString() {
        String string = name
        if(dishes.isEmpty()) return string;

        if(dishes && dishes.size() == 1){
            string = dishes[0]
        }else{
            def dishesArr = dishes.toArray()
            string += " enhält: $dishesArr "
        }
        string += " ; kostet: " + getPrice()

        return string
    }
}
