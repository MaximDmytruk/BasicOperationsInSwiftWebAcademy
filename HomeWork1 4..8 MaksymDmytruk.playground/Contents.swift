import UIKit

/*
 4. Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива.
 
 5. Создайте словарь:
 var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
 Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь
 
 6. Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из четвертого задания.
    С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа пусть будет год, а значение это массив с месяцами.
 
 7. С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.
 
 8* На основании словаря, который у вас получился в седьмом задании, давайте создадим новый словарь, который будет включать в себя также и даты, a именно массив с числами от 1 до 31:
 ● Создайте массив с числами от 1 до 31 с помощью цикла.
 ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в качестве
 значений вложенные словари. В которых в качестве ключей названия месяцев, а в
 качестве значений массив с днями созданный выше.
 ● Выведите в консоль 1 сентября 2019 года.
 PS: Для заполнения calendarPro используйте только созданный массив с числами, и словарь с месяцами, и никаких других данных
  
 */

//Task: 4
var monthes:Array<String> = ["January", "February", "March","April",
                     "May", "June", "July", "August",
                     "September", "October", "November", "December"]

var monthDictionary: Dictionary<Int,String> = [:]
monthDictionary = addArrayInDictionary(array: monthes)

//Функція для перенесення масива в Dict
func addArrayInDictionary (array:Array<String>) -> (Dictionary<Int,String>) {
    
    var dict: Dictionary<Int,String> = [:]
    
    for index in array.indices {
        dict[index+1] = array[index]
    }
    return dict
}

//Task: 5
var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

var integer = dictionary["first"]
dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = integer

//Виводжу в консоль
print("Task 5:")
for (string, numb) in dictionary {
    print("Key: '\(string)'. Value: \(numb)")
}

//Task: 6
var calendar: Dictionary<Int,Array<String>> = [:]

for year in 1970...2020 {
    calendar[year] = monthes
}


//Task: 7
for (year, _) in calendar {
    calendar[year]?.append("Applember")
}

//Task: 8

var days: Array<Int> = []
days = Array(1...31)

var embeddedCalendar:Dictionary< String,Array<Int> > = [:]
var calendarPro: Dictionary<Int,Dictionary<String,Array<Int>>> = [:]

for year in 1970...2020 {
    for month in monthes {
        embeddedCalendar[month] = days
    }
    calendarPro[year] = embeddedCalendar
}
print("")
print("Task 8:")
printData(day: 1, month: "September", year: 2019)

func printData (day:Int, month:String, year:Int) {
    
    for (years, monthesInLoop) in calendarPro where years == year{
        for (arr,value) in monthesInLoop {
            if arr == month {
                print("\(value[day-1]) \(arr) \(years)")
            }
        }
    }
}





