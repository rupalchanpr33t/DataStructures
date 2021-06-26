import UIKit

struct Stack<T>{
    
    private var list:[T] = []
    
    //Checks for empty and returns accordingly
    var isEmpty:Bool{
        return list.isEmpty
    }
    
    //Returns the item count of stack
    var count:Int{
        return list.count
    }
    
    //Returns the top element of stack
    var top:T?{
        if isEmpty{
            return nil
        }
        else{
            return list.last
        }
    }
    
    init() {
        
    }
    
    //Adding element to the stack
    mutating func push(_ item:T) {
        list.append(item)
    }
    
    //Removing element from the stack
    mutating func pop() -> T? {
        if isEmpty{
            return nil
        }
        else{
            return list.removeLast()
        }
    }
}

//Adding custom description for stack
extension Stack:CustomDebugStringConvertible{
   
    var debugDescription: String{
        if isEmpty{
            return "Stack is empty."
        }
        else{
            return "Stack: \(self.list)"
        }
    }
}

var mStack = Stack<String>()
debugPrint(mStack.isEmpty)
debugPrint(mStack)

mStack.push("Jacob")
mStack.push("Simon")
debugPrint(mStack)

mStack.pop()
debugPrint(mStack)
debugPrint(mStack.top as Any)

mStack.push("Nina")
debugPrint(mStack)
debugPrint(mStack.top as Any)

