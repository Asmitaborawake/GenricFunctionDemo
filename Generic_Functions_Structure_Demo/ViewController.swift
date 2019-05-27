//
//  ViewController.swift
//  Generic_Functions_Structure_Demo
//
//  Created by User on 27/05/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit
//for generic struct we create stuct with Eelement type
struct addition<Element> {
    
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func  pop() -> Element {
        return items.removeLast()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call struct generic
        getData()
        //simple add int function
        let answer = self.additionOfTwoValues(v1: 8, v2: 8)
        print(answer)
        //simple add double function
        let ans = self.additionOfTwoDoubleValues(v1: 8, v2: 8.19)
        print(ans)
        
        //call generic function
        let genericadd = self.additionUsingGenericFunc(v1: 8, V2: 8.19)
        print(genericadd)
         //call generic function 
        let addintusinggeneric =  self.additionUsingGenericFunc(v1: 8, V2: 8)
        print(addintusinggeneric)
    }


    
    //MARK: Additon of Int two numbers uisng simple function
    func additionOfTwoValues(v1: Int ,v2: Int) -> Int {
        let answer = v1 + v2
        return answer
    }
    
    //MARK: Addition of Double two number using simple function
    func additionOfTwoDoubleValues(v1: Double ,v2: Double) -> Double {
        let answer = v1 + v2
        return answer
    }
    
    
    //MARK: Generic Function we use this one function for addition of int and double values for that we create one generic function which have T data type
    
    func additionUsingGenericFunc<T: Numeric>(v1 : T , V2: T) -> T {
        return v1 + V2
    }
    
    //MARK: Structure
    func getData() {
        var add = addition<Double>()
        add.push(8.8)
        add.push(100.10)
        print(add)
        let pop = add.pop()
        print(add)
        
        var add1 = addition<Int>()
        add1.push(8)
        add1.push(100)
        print(add1)
        let pop1 = add1.pop()
        print(add1)
        
        var add2 = addition<String>()
        add2.push("asmita")
        add2.push("komal")
        print(add2)
        let pop2 = add2.pop()
        print(add2)

    }
}

