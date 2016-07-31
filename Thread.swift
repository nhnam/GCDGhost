
import Foundation
import UIKit

struct QualityOfServiceClasses
{
    static let Interactive = QOS_CLASS_USER_INTERACTIVE
    static let Initiated = QOS_CLASS_USER_INITIATED
    static let Utility = QOS_CLASS_UTILITY
    static let Background = QOS_CLASS_BACKGROUND
    static let Default = QOS_CLASS_DEFAULT
    static let Unspecified = QOS_CLASS_UNSPECIFIED
}


public class DSL  {
    
    class func mainQueue() -> dispatch_queue_t {
        return dispatch_get_main_queue()
    }
    
    class func userInteractiveQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Interactive, 0)
    }
    
    class func userInitiatedQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Initiated, 0)
    }
    
    class func utilityQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Utility, 0)
    }
    
    class func backgroundQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Background, 0)
    }
    
    class func defaultQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Default, 0)
    }
    
    class func unSpecifiedQueue() -> dispatch_queue_t {
        
        return dispatch_get_global_queue(QualityOfServiceClasses.Unspecified, 0)
    }
}

class Thread {
    
    //MARK: Asynchronous Queue
    
    class func async(name : String,block : dispatch_block_t) -> () {
        
        return  dispatch_async(dispatch_queue_create(name, nil), block)
    }
    
    //MARK: Asynchronous Queue With Attributes
    
    class func async(name : String, attribute : dispatch_queue_attr_t, block : dispatch_block_t) -> () {
        
        return dispatch_async(dispatch_queue_create(name, nil), block)
    }
    
    //MARK: Main Queue
    
    class func main(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.mainQueue(), block)
    }
    
    //MARK: Background Queue
    
    class func background(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.backgroundQueue(), block)
    }
    
    //MARK: Utility Queue
    
    class func utility(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.utilityQueue(), block)
    }
    
    //MARK: User Interactive Queue
    
    class func userInteractive(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.userInitiatedQueue(), block)
    }
    
    //MARK: User Initiated Queue
    
    class func userInitiated(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.userInitiatedQueue(), block)
    }
    
    //MARK: Unspecified Queue
    
    class func unspecified(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.unSpecifiedQueue(), block)
    }
    
    //MARK: Default Queue
    
    class func defualt(block : dispatch_block_t) -> () {
        
        return dispatch_async(DSL.defaultQueue(), block)
    }
}













