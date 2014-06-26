//
//  TaskManager.swift
//  Swift TaskList
//
//  Created by DonLeung on 6/25/14.
//  Copyright (c) 2014 DonLeung. All rights reserved.
//

import UIKit

// Create an instance for TaskManager
var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    // A taskManager contains a property called tasks, which holds an array of struct of task.
    var tasks = task[]()
    
    // addTask function
    func addTask(name: String, desc: String) {
        //array built-in method?
        tasks.append(task(name: name, desc: desc))
    }
}
