//Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. 
//Добавить в класс пиццерии массив с работниками
//Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, 
//а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе
//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. 
//Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра

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
    private var workers: [Worker]
    private var tables: [Table]

    init() {
        products = []
        workers = []
        tables = []
    }

    func addProduct(product: MenuProtocol) {
        products.append(product)
    }

    func getProducts() -> [MenuProtocol] {
        products
    }
    
    func addWorker(worker: Worker) {
        workers.append(worker)
    }
    
    func getWorkers() -> [Worker] {
        workers
    }
    
    func addTable(seats: Int) {
        let table = Table(seats: seats, pizzeria: self)
        tables.append(table)
    }
    
    func getTables() -> [Table] {
        tables
    }
}

struct Worker {
    var name: String
    var salary: Double
    var position: Position
    
    enum Position {
        case cashier
        case cook
    }
}

class Table {
    var seats: Int
    weak var pizzeria: Pizzeria?
    
    init(seats: Int, pizzeria: Pizzeria) {
        self.seats = seats
        self.pizzeria = pizzeria
    }
    
    func checkGuests (guests: Int) -> Bool {
        guests <= seats
    }
}

