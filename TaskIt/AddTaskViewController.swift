//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Tony Morales on 10/24/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    var mainVC: ViewController!
    
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addTaskButtonPressed(sender: UIButton) {
        
        var task = TaskModel(task: taskTextField.text, subtask: subtaskTextField.text, date: dueDatePicker.date, completed: false)
        mainVC.baseArray[0].append(task)
        dismissViewControllerAnimated(true, completion: nil)
    }


}
