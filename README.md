An abstract thread quality of service (QOS) helper in different dispatch queues.

This is a light-weight library for easily submitting blocks, which takes no arguments and have no return values in different 
quality of service thread.

Accessing this in your code is very easy. Just drag the file named Thread to your project and start using it. The project has the Swift 2 code, If you are looking for ```Swift version``` of this project take a look at the branch ```Swift3```.

**Example ->**

**Main Queue :**

```Swift
Thread.main {
            
    self.tableView.reloadData()
}
```

**Asynchronous Queue :**

```Swift
Thread.async("BackgroundJob") {
            
   // Asynchronous Network request
}
```

**Background Queue :**

```Swift
Thread.background { 
            
  // Uploading a video
}
```

**Utility Queue :** 

```Swift
Thread.utility { 
            
}
```

**User Interactive Queue :** 

```Swift
Thread.userInteractive { 
            
}
```

**User Initiated Queue :** 

```Swift
Thread.userInitiated { 
            
}
```

**Unspecified Queue :**  -- Only in Swift 2

```Swift
Thread.unspecified { 
            
}
```

**Default Queue :**

```Swift
Thread.defualt { 
            
}
```


