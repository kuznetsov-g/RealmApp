//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by Alexey Efimov on 17.05.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = "\(currentTasks.count)"
            accessoryType = .none
        }

        contentConfiguration = content
    }
}
