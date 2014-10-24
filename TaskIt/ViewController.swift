//
//  ViewController.swift
//  TaskIt
//
//  Created by Tony Morales on 10/24/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var taskArray: [Dictionary<String, String>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1: Dictionary<String, String> = ["task": "Study French", "subtask": "Verbs", "date": "1/1/2015"]
        let task2: Dictionary<String, String> = ["task": "Eat Dinner", "subtask": "Burgers", "date": "1/1/2015"]
        let task3: Dictionary<String, String> = ["task": "Gym", "subtask": "Leg day", "date": "1/1/2015"]
        taskArray = [task1, task2, task3]
        
        // Eliot has a habit of using self. to reference IBOutlets
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // UITableViewDataSource
    
    func tableView(tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        println(indexPath.row)
        
        let taskDict: Dictionary = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        return cell
    }

    
    // UITableViewDelegate
    
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    

}

