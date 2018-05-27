//
//  TaskTableViewController.swift
//  Task List
//
//  Created by Rafael Goncalves on 26/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {

    var tasks: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            let task = TaskUserDefaults()
            task.remove(index: indexPath.row)
            updateTaskList()
        }
    
    }
    
    func updateTaskList() {
        let task = TaskUserDefaults()
        tasks = task.list()
        tableView.reloadData()
    }

    override func viewDidAppear(_ animated: Bool) {
        
        updateTaskList()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...

        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
 

  
}
