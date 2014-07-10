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
        return String.format("%.2f", sum);
    }


    @Override
    public String toString() {
        String string = name
        if(dishes.isEmpty()) return string;

        if(dishes && dishes.size() == 1){
            string = dishes[0]
        }else{
            string += " enhält: "
            def dishesArr = dishes.toArray()
            for (Dish dish in dishesArr ){
                string  += "$dish, "
            }
            string = string.subSequence(0,string.length()-2)

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

    public String getUri(){
        return dishes.getAt(0).imgUri
    }


}
