import UIKit

class Node<T>{
    var value:T
    var nextNode:Node?
    
    init(_ v:T,_ next:Node? = nil) {
        self.value = v
        self.nextNode = next
    }
}


struct LinkedList<T>{
    
    var head:Node<T>?
    
    //Checks for empty and returns accordingly
    var isEmpty:Bool{
        return head == nil
    }
    
    init() {
        
    }
    
    //Adding element to the list
    mutating func push(_ value:T) {
        if head == nil{
            head = Node(value)
        }else{
            head = Node(value,head)
        }
    }
    
    //Removing element from the list
    mutating func pop() -> T? {
        defer {
            head = head?.nextNode
        }
        if isEmpty{
            return nil
        }
        else{
            return head?.value
        }
    }
    
    //Adding element to list at specified position
    mutating func inserAt(_ index:Int,_ value:T) {
        if index == 0{
            head = Node(value, head)
        }
        else{
            var tempHead = head
            let newNode = Node(value)
            
            for _ in 0..<index - 1{
                tempHead = tempHead?.nextNode
            }
            newNode.nextNode = tempHead?.nextNode
            tempHead?.nextNode = newNode
        }
    }
    
    //Deleting element from list at specified position
    mutating func deleteAt(_ index:Int){
        if index == 0{
            head = head?.nextNode
        }
        else{
            var tempHead = head
            var previousNode:Node<T>?
            
            for _ in 0..<index{
                previousNode = tempHead
                tempHead = tempHead?.nextNode
            }
            previousNode?.nextNode = tempHead?.nextNode
        }
    }
    
    //Printing elements of list
    func printAllElements(){
        if head == nil{
            print("List is empty.")
        }
        else{
            var tempHead = head
            print(tempHead?.value as Any)
            while tempHead?.nextNode != nil{
                print(tempHead?.nextNode?.value as Any)
                tempHead = tempHead?.nextNode
            }
            
        }
    }
}

var mList = LinkedList<String>()
debugPrint(mList.isEmpty)

mList.push("Jacob")
mList.push("Simon")
mList.push("Harry")
mList.printAllElements()

mList.pop()
mList.printAllElements()

mList.inserAt(1,"Nina")
mList.printAllElements()

mList.deleteAt(5)
mList.printAllElements()

