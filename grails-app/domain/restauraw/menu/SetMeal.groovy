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
        string += " - " + getPrice()

        return string
    }

   public String getIngredients(){
       String out = ""
       def dishesArr = dishes.toArray()
       for (Dish dish in dishesArr ){
           out += "$dish.ingredients, "
       }
       return out.subSequence(0,out.length()-2)
    }


}
