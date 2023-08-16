import UIKit

protocol HelloProtocol{
    
    associatedtype T
    
    func sayGenericParam()
    var name: String {
        get
    }
    var array : [T] { get }
    func sayHello(val: String)
    init(name:String)
}

class FirstSwiftClass<T>:HelloProtocol{
    var array: [T] = []
    
    
    func sayGenericParam() {
        print(T.self)
    }
    var name: String
    required init(name: String) {
        self.name = name
    }
    
    func sayHello(val: String) {
        print(val)
    }
    
}


class DumyFirstSwiftClass<T>:HelloProtocol{
    var array: [T] = []
    
    func sayGenericParam() {
        <#code#>
    }
    
    var name: String
    
    func sayHello(val: String) {
        <#code#>
    }
    
    required init(name: String) {
        self.name = name
    }
    
    
}


class HelloViewController : FirstSwiftClass<Double>{
   
}

