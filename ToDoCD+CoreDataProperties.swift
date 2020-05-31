//
//  ToDoCD+CoreDataProperties.swift
//  ToDoListApp
//
//  Created by Shreya Polkampally on 5/31/20.
//  Copyright © 2020 Shreya Polkampally. All rights reserved.
//
//

import Foundation
import CoreData


extension ToDoCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoCD> {
        return NSFetchRequest<ToDoCD>(entityName: "ToDoCD")
    }

    @NSManaged public var name: String?
    @NSManaged public var important: Bool

}
