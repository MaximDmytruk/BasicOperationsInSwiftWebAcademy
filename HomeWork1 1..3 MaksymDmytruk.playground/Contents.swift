import UIKit

/*Create an array of ten random numbers, five of which are less than zero and five of which are greater than zero
1. Replace all negative numbers with 0 and output the array to the console
2. Find the minimum and maximum element in the array and output it to the console
3. Find the sum of the elements of the array of numbers and output it to the console
*/
 
//Task: 1
var randomArray: Array<Int> = [4, 1, 28, -6, -11, -92, 11, 5, -65, -23]
var arrayWithoutNegativeNum = negativeNumToZero(array: randomArray)

print ("Масив з випадковими числами: \(randomArray)")
print ("Завдання 1. Відповідь: \(arrayWithoutNegativeNum)")

//Task: 2
var maxValue = maxValueInArray(array: randomArray)
var minValue = minValueInArray(array: randomArray)

randomArray.max()  //another execution option
randomArray.min()  //another execution option

print("Завдання 2. Відповідь: Мах = \(maxValue) , Міn = \(minValue)")

//Task: 3
var sumOfValue = sumOfValueArray(array: randomArray)
print("Завдання 3. Відповідь: Сума = \(sumOfValue)")


//Functional:
// MARK: - replacing a negative number with zero
func negativeNumToZero (array:Array<Int>) -> (Array<Int>) {
    
    var arr = array
    
    for index in arr.indices where arr[index] < 0 {
        arr[index] = 0
    }

    return arr
}

//MARK: - Max element in array
func maxValueInArray (array:Array<Int>) -> Int {
     
    var maxElement:Int = array[0]
    
    for element in array {
        if maxElement < element {
            maxElement = element
        }
    }
    return maxElement
}

//MARK: Min element in array
func minValueInArray (array:Array<Int>) -> Int {
    
    var minElement = array[0]
    
    for element in array {
        if minElement > element {
            minElement = element
        }
    }
    return minElement
}

//MARK: Sum of numbers
func sumOfValueArray (array:Array<Int>) -> (Int){
    var sum:Int = 0
    
    for value in array {
        sum += value
    }
    return sum
}
