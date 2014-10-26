//
//  TaskModel.swift
//  TaskIt
//
//  Created by Tony Morales on 10/25/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)

class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
