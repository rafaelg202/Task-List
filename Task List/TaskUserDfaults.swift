//
//  TaskUserDfaults.swift
//  Task List
//
//  Created by Rafael Goncalves on 26/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import Foundation
import UIKit

class TaskUserDefaults{
    
    let key = "taskList"
    var tasks: [String] = []
    
    func remove(index: Int){
        tasks = list()
        
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey: key)
    }
    
    func save(task: String) {
        
        //recuparate saved tasks
        tasks = list()
        //save new taks
        tasks.append( task )
        UserDefaults.standard.set( tasks , forKey: key)
        
    }
    
    func list() -> Array<String>{
        
         let data = UserDefaults.standard.object(forKey: key)
         
         if data != nil {
            return data as! Array<String>
         }else {
            return []
        }
        
    }
    
}
