//В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
//Создайте протокол, в котором будут содержаться функции открытия и закрытия.
//Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

protocol MenuProtocol {
    var price: Double {get}
}

protocol OpenClosePizzeria {
    func open()
    func close()
}

extension Pizzeria: OpenClosePizzeria {
    func open() {
        print("Pizzeria is open!")
    }
    
    func close() {
        print("Pizzeria is close!")
    }
}

struct Pizza: MenuProtocol {
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

struct PotatoFree: MenuProtocol {
    var price: Double
    var size: PotatoSize
    enum PotatoSize {
        case small
        case medium
        case big
    }
}

class Pizzeria {
    private var products: [MenuProtocol]

    init() {
        products = []
    }

    func addProduct(product: MenuProtocol) {
        products.append(product)
    }

    func getProducts() -> [MenuProtocol] {
        products
    }
}

var newPizzeria = Pizzeria()
newPizzeria.open()
newPizzeria.addProduct(product: Pizza(price: 100, type: .pepperoni, isSlimBase: true, addition: [.pepperoni, .cheese]))
newPizzeria.addProduct(product: Pizza(price: 150, type: .margherita, isSlimBase: false, addition: []))
newPizzeria.addProduct(product: PotatoFree(price: 50, size: .medium))
newPizzeria.close()


//Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.

func deduction<T: Numeric> (a: T, b: T)  -> T {
    a - b
}

print(deduction(a: 7.5, b: 5))
