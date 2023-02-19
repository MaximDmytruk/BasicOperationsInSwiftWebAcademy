import UIKit
import Foundation
/*
 9. Создайте 2 переменные с числами. Если значения равны, выведите в консоль их сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное число.
 
 10. Создайте строку, в которой будет храниться любая фраза из трех или более слов c восклицательным знаком в конце. Выведите в консоль первое и последнее слово из этой строки (без восклицательного знака).
 В этом задании необходимо найти способ доставать слова из вашей строки, погуглите методы с помощью которых это возможно реализовать.
 Задание сложнее чем кажется :)
 
 11*. Создайте функцию которая принимает 1 параметр, процент заряда батареи. Пусть функция вернет сообщения для пользователя в зависимости от этого процента:
 ● если 100%: “Устройство заряжено”,
 ● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
 ● если 20-40%, “Поставьте устройство на зарядку”
 ● если 0%, “Устройство полностью разряжено”
 В остальных случаях не выводите ничего. Используйте switch case.
 
 */

//Task 9:
print("Task 9:")
var a = 7
var b = 2

if a == b {
    
    print((a + b) * 3)
    
} else if (a + b) % 2 == 0 {
    
    print(a + b)
    
} else { print("Nothing to print")}

print("")
//Task 10:
var string = "I am Maksym Dmytruk, my goal is to become iOS Developer!"

func wordFromString (string:String, numOfWordToPrint:Int) -> (String){
    
    var word = ""
    var space = 0  //кількість пробілів для виділення цілих слів
    var rangeOfLetter = "A"..."z" //Діапазон можливих літер
    
    //Перевірка чи не ввів кор нульове слово
    guard numOfWordToPrint != 0 else { return "-Error-" }
    
    for char in string {
        
        if char == " " { space += 1 } //
        
        if rangeOfLetter.contains(String(char)) {   //перевіряємо літер
            if space == numOfWordToPrint - 1 {      //визначаємо потрібне слово
                word += String(char)
            }
        }
    }
    //Перевірка чи не ввів кор неіснуюючого слова
    if numOfWordToPrint-1 > space { "-Error-" }
    
    return word + " "
}

var realFuture:String =
wordFromString(string: string, numOfWordToPrint: 3) +
wordFromString(string: string, numOfWordToPrint: 4) +
wordFromString(string: string, numOfWordToPrint: 7) +
wordFromString(string: string, numOfWordToPrint: 10) +
wordFromString(string: string, numOfWordToPrint: 11)

var taskTen = wordFromString(string: string, numOfWordToPrint: 1) + wordFromString(string: string, numOfWordToPrint: 11)

print("Task 10:")
print("String: \(string)")
print(realFuture)
print(taskTen)


//Task 11:
print("")
print("Task 11:")
func levelOfBattereCharge (levelIs: Int){
    
    switch levelIs {
    case 100: return print("Устройство заряжено")
    case 70...80: return print("Необходимо зарядить устройство в течении 6 часов")
    case 20...40: return print("Поставьте устройство на зарядку")
    case 0 : return print("Устройство полностью разряжено")
    default: break
    }
}

levelOfBattereCharge(levelIs: 76)
