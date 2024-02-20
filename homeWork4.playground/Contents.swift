//Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
//Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр).
//Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
//Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
//Создать экземпляр класса пиццерии и добавить в него несколько пицц.


struct Pizza {
    var price: Double
    var type: PizzaType
    var isSlimBase: Bool
    var addition: [Additions]
    
    enum PizzaType {
        case margherita
        case pepperoni
        case fourCheese
        case chicken
        case veggie
    }
    enum Additions {
        case pepperoni
        case tomato
        case cheese
    }
}

class Pizzeria {
    private var pizzas: [Pizza]
    
    init() {
        pizzas = [Pizza(price: 200, type: .fourCheese, isSlimBase: false, addition: [.tomato, .cheese]),
                  Pizza(price: 250, type: .veggie, isSlimBase: true, addition: [.tomato])]
    }
    
    func addPizza (pizza: Pizza) {
        pizzas.append(pizza)
    }
    
    func getPizzas () -> [Pizza] {
        return pizzas
    }
}

var newPizzeria = Pizzeria()
newPizzeria.addPizza(pizza: Pizza(price: 100, type: .pepperoni, isSlimBase: true, addition: [.pepperoni, .cheese]))
newPizzeria.addPizza(pizza: Pizza(price: 150, type: .margherita, isSlimBase: false, addition: []))
