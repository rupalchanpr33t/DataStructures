import UIKit

struct Queue<T>{
    
    private var list:[T] = []
    
    //Checks for empty and returns accordingly
    var isEmpty:Bool{
        return list.isEmpty
    }
    
    //Returns the queue item count.
    var count:Int{
        return list.count
    }
    
    //Returns the first element of queue.
    var front:T?{
        if isEmpty{
            return nil
        }
        else{
            return list.first
        }
    }
    
    init() {
        
    }
    
    //Adding element to the queue
    mutating func enqueue(_ item:T) {
        list.append(item)
    }
    
    //Removing element from the queue
    mutating func dequeue() -> T? {
        if isEmpty{
            return nil
        }
        else{
            return list.removeFirst()
        }
    }
}

//Queue custom debug description
extension Queue:CustomDebugStringConvertible{
   
    var debugDescription: String{
        if isEmpty{
            return "The queue is empty."
        }
        else{
            return "Queue: \(self.list)"
        }
    }
}

var mQueue = Queue<Int>()
debugPrint(mQueue.isEmpty)
debugPrint(mQueue)

mQueue.enqueue(5)
mQueue.enqueue(9)
debugPrint(mQueue.count)

mQueue.enqueue(3)
debugPrint(mQueue)
debugPrint(mQueue.front as Any)

mQueue.dequeue()
debugPrint(mQueue)
debugPrint(mQueue.front as Any)
