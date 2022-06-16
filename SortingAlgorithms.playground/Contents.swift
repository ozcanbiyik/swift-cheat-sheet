import UIKit

// SORTING ALGORITHMS

var unsortedArr = [3,2,5,4,1]

// BUBBLE SORT
// best case complexity: O(n)
// worst case compelexity: O(n^2)
// kısaca ikili ikili elemanlar şeklinde ilerler ve sağdaki soldakinden küçükse yer değiştirirler
//öğrenme amacı dışında kullanılmaz

func bubbleSort(_ array: [Int]) -> [Int] {
    var arr = array
    for _ in 0...arr.count{ // Döngü içindeki underscore burada değişkene gerek yok, döngü range kadar dönsün demektir.
        print("y")
        for value in 1...arr.count-1{
            print("value")
            if arr[value-1] > arr[value]{
                let largerValue = arr[value-1]
                arr[value-1] = arr[value]
                arr[value] = largerValue
            }
        }
    }
    print("Sorted with Bubble : \(arr)")
    return arr
}

bubbleSort(unsortedArr)

for _ in 1...unsortedArr.count-1{
    print("x")
}

// INSERTION SORT
