import UIKit

// SORTING ALGORITHMS

var arr2 = [3,2,5,4,1]

// BUBBLE SORT
// best case complexity: O(n)
// worst case compelexity: O(n^2)
// kısaca ikili ikili elemanlar şeklinde ilerler ve sağdaki soldakinden küçükse yer değiştirirler

func bubbleSort(_ array: [Int]) -> [Int] {
    var arr = array
    for _ in 0...arr.count{ // Döngü içindeki underscore burada değişkene gerek yok, döngü range kadar dönsün demektir.
        for value in 1...arr.count-1{
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

bubbleSort(arr2)
