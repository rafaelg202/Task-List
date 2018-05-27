//
//  AddTaskViewController.swift
//  Task List
//
//  Created by Rafael Goncalves on 26/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var TaskField: UITextField!
    
    @IBAction func AddTask(_ sender: Any) {
        
        if let textTyped = TaskField.text{
            
            let task = TaskUserDefaults()
            task.save(task: textTyped)
            TaskField.text = ""
            
            
            let data = task.list()
            
            print(data)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
