//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Tony Morales on 10/24/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    var mainVC: ViewController!
    
    var detailTaskModel: TaskModel!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taskTextField.text = detailTaskModel.task
        subtaskTextField.text = detailTaskModel.subtask
        dueDatePicker.date = detailTaskModel.date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var task = TaskModel(task: taskTextField.text, subtask: subtaskTextField.text, date: dueDatePicker.date, completed: false)
        
        mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task
        
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    
    
    
    
}
