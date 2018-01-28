//: Playground - noun: a place where people can play

import UIKit
import XCTest


protocol Discount {
    
     func calculateDiscount() -> Float
}

class UserCategory<T> {
    var category: T
    init(category:T) {
        self.category = category
    }
   

   
}

class DiscountRules {
    var cost : Int
    var product : String
    var factor : Float
    
    init(cost: Int, product: String) {
        self.cost = cost
        self.product = product
        factor = 0
    }
    
    
    
//    mutating func checkProd(){
//
//        if (self.product) = "Grocery"{
//            print ("no discount")
//        factor = round(cost / 100.0)
//    }
//    }
    
    
}


    

class Employee: Discount {
    var name : String
    var discount : Float

    init(name: String, discount: Float) {
        
        self.name = name
        self.discount = discount
    }
    
    func calculateDiscount() -> Float {
        return self.discount
    }
    
    
}

class Affliate: Discount {
    var name : String
    var discount : Float
    var affliateDiscription : String
    
    init(name: String, discount: Float, affliateDiscription: String ) {
        self.name = name
        self.discount = discount
        self.affliateDiscription = affliateDiscription
    }
    
    func calculateDiscount() -> Float {
        return self.discount
    }
}


class Customer:Discount {
    var name : String
    var discount : Float
    var loyaltyyears : Int
    
    init(name: String, loyaltyyears: Int, discount: Float) {
        self.name = name
        self.discount = discount
        self.loyaltyyears = loyaltyyears
    }
    
    func calculateDiscount() -> Float {
        return self.discount
    }
    
    
    
}


class User {
    var user:UserCategory<Any>
    init(userCategory:UserCategory<Any>){
        self.user = userCategory
    }
}



    
class Users {
        var users : Array<Int> = []
    }
    
let employee1 = Employee(name: "Victor", discount: 30 )
employee1.calculateDiscount()
let affliate1 = Affliate(name: "Affliate1", discount: 10.0 , affliateDiscription: "Affliate of group C")
affliate1.calculateDiscount()

let user1 = User(userCategory: UserCategory(category: employee1))
let user2 = User(userCategory: UserCategory(category: affliate1))


//MARK: Helper Functions


//final class User<T> {
//    var value: T
//    init(value:T) {
//        self.value = value
//    }
//
//
//
//}
//



class RDTest: XCTestCase {
    
    
    //called before each test invocation
    override func setUp() {
        super.setUp()
    }
    
    
    
//    XCTAssertTrue(, "check1 success.")
//    XCTAssertNotNil(, " instance not created..")
    
}




//execute bst tests
//RDTest.defaultTestSuite.run()

