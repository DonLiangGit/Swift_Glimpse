//
//  TaskManager.swift
//  TodoList
//
//  Created by DonLeung on 6/26/14.
//  Copyright (c) 2014 DonLeung. All rights reserved.
//

// * why not import Cocoa
// * import UIKit

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = task[]() // ()means initialize nothing
    
    func addTask(name: String,desc: String) {
        tasks.append(task(name:name,desc:desc))
    }
    
}
