//Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.

func depositCalc(sum: Double, percent: Double, time: Int) -> Double {
    ((sum + (sum * percent / 100 * Double(time)) / 365) * 100).rounded() / 100
}
// Для проверки рассчитаем депозит суммой в 800 000, процентной ставкой 10,5% годовых и сроком 180 дней
print(depositCalc(sum: 800000, percent: 10.5, time: 180))


//Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
//Добавить возможность получения названия пиццы через rawValue

enum Pizza: String {
    case pepperoni = "Pepperoni Pizza"
    case margherita = "Margherita Pizza"
    case fourCheese = "Four Cheese Pizza"
}

var pizza1 = Pizza.pepperoni
var pizza2 = Pizza.margherita
var pizza3 = Pizza.fourCheese

print(pizza1.rawValue)
print(pizza2.rawValue)
print(pizza3.rawValue)
