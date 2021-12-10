//
//  ViewController.swift
//  AlgoAnswers
//
//  Created by Home on 12/10/21.
//

import UIKit

class ViewController: UIViewController {
let arr = [3,6,1,8,9,4]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(findSecondlargest(arr: arr))
        print(isPalindrome(myString: "wawa"))
        // Do any additional setup after loading the view.
    }


    var secondLargest : Int?
    func findSecondlargest(arr:[Int]) -> Int{
        let sortedArr = arr.sorted()
            secondLargest = sortedArr[sortedArr.count - 2]
        return secondLargest ?? 0
        
    }
    func isPalindrome(myString : String) -> Bool{
        let stringLower = myString.lowercased()
        let arr = Array(stringLower)
           for index in 0..<arr.count/2 {
               if arr[index] != arr[arr.count - 1 - index] {
                   return false
               }
           }
           return true
    }
}

