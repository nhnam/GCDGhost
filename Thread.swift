
import Foundation
import UIKit

public class DSL  {
    
    class func mainQueue() -> DispatchQueue {
        return DispatchQueue.main
    }
    
    class func userInteractiveQueue() -> DispatchQueue {
        
        return DispatchQueue.global(attributes: DispatchQueue.GlobalAttributes.qosUserInteractive)
    }
    
    class func userInitiatedQueue() -> DispatchQueue {
        
        return DispatchQueue.global(attributes: DispatchQueue.GlobalAttributes.qosUserInitiated)
    }
    
    class func utilityQueue() -> DispatchQueue {
        
        return DispatchQueue.global(attributes: DispatchQueue.GlobalAttributes.qosUtility)
    }
    
    class func backgroundQueue() -> DispatchQueue {
        
        return DispatchQueue.global(attributes: DispatchQueue.GlobalAttributes.qosBackground)
    }
    
    class func defaultQueue() -> DispatchQueue {
        
        return DispatchQueue.global(attributes: DispatchQueue.GlobalAttributes.qosDefault)
    }
}

class Thread {
    
    //MARK: Asynchronous Queue
    
    class func async(_ name : String,block : ()->()) -> () {
        
        return  DispatchQueue(label: name, attributes: []).async(execute: block)
    }
    
    //MARK: Asynchronous Queue With Attributes
    
    class func async(_ name : String, attribute : DispatchQueueAttributes, block : ()->()) -> () {
        
        return DispatchQueue(label: name, attributes: []).async(execute: block)
    }
    
    //MARK: Main Queue
    
    class func main(_ block : ()->()) -> () {
        
        return DSL.mainQueue().async(execute: block)
    }
    
    //MARK: Background Queue
    
    class func background(_ block : ()->()) -> () {
        
        return DSL.backgroundQueue().async(execute: block)
    }
    
    //MARK: Utility Queue
    
    class func utility(_ block : ()->()) -> () {
        
        return DSL.utilityQueue().async(execute: block)
    }
    
    //MARK: User Interactive Queue
    
    class func userInteractive(_ block : ()->()) -> () {
        
        return DSL.userInitiatedQueue().async(execute: block)
    }
    
    //MARK: User Initiated Queue
    
    class func userInitiated(_ block : ()->()) -> () {
        
        return DSL.userInitiatedQueue().async(execute: block)
    }
    
    //MARK: Default Queue
    
    class func defualt(_ block : ()->()) -> () {
        
        return DSL.defaultQueue().async(execute: block)
    }
}













