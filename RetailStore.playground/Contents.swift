//: Playground - noun: a place where people can play

import UIKit
import XCTest



class Product {
    var prodName: String
    var prodPrice: Int
    
    init(prodName: String, prodPrice: Int){
        self.prodName = prodName
        self.prodPrice = prodPrice
    }
}
//protocol Discount {
//
//    func calculateDiscount() -> Float
//}

class Customer {
//    var custname: String
//    var loyaltyYears: Int
//    
//    init(custname: String, loyaltyYears: Int){
//        self.custname = custname
//        self.loyaltyYears = loyaltyYears
//    }
    
//    func calculateDiscount() -> Float {
//        if self.loyaltyYears >= 2 {
//            return 5
//        }
//    }
    
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
    
    
}



class Employee:Customer {
    var name : String
    var discount : Float
    var product: Product

    init(name: String, discount: Float, product: Product) {
        
        self.name = name
        self.discount = discount
        self.product = product
    }
    
    func calculateDiscount() -> Float {
        return self.discount
    }
    
}

class Affliate: Customer {
    var name : String
    var discount : Float
    var affliateDiscription : String
    
    init(name: String, discount: Float, affliateDiscription: String) {
        
        self.name = name
        self.discount = discount
        self.affliateDiscription = affliateDiscription
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
    
    func testRetailDiscount(){
        
        //creating prod1
        let prod1 = Product(prodName: "grocerry", prodPrice: 100)
        let employee1 = Employee(name: "Victor", discount: 30, product: prod1)
        employee1.calculateDiscount()
        let affliate1 = Affliate(name: "Affliate1", discount: 10.0 , affliateDiscription: "Affliate of group C")
        affliate1.calculateDiscount()
        //let customer1 = Customer(name: "customer1", loyaltyyears: 2, discount: 5.0)
        
        
        
        _ = User(userCategory: UserCategory(category: employee1))
        _ = User(userCategory: UserCategory(category: affliate1))
    }
 
}
//    XCTAssertTrue(, "check1 success.")
//    XCTAssertNotNil(, " instance not created..")
    





//execute bst tests
RDTest.defaultTestSuite.run()

