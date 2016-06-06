An abstract thread quality of service (QOS) helper in different dispatch queues.

This is a light-weight library for easily submitting blocks, which takes no arguments and have no return values in different 
quality of service thread.

Accessing this in your code is very easy. Just drag the file named Thread to your project and start using it.

**Example ->**

**Main Queue :**

```
Thread.main {
            
    self.tableView.reloadData()
}
```

**Asynchronous Queue :**

```
Thread.async("BackgroundJob") {
            
   // Asynchronous Network request
}
```

**Background Queue :**

```
Thread.background { 
            
  // Uploading a video
}
```

**Utility Queue :** 

```
Thread.utility { 
            
}
```

**User Interactive Queue :** 

```
Thread.userInteractive { 
            
}
```

**User Initiated Queue :** 

```
Thread.userInitiated { 
            
}
```

**Unspecified Queue :** 

```
Thread.unspecified { 
            
}
```

**Default Queue :**

```
Thread.defualt { 
            
}
```


