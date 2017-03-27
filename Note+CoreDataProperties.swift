//
//  Note+CoreDataProperties.swift
//  CoolNotes
//
//  Created by François Hébert on 2017-03-27.
//  Copyright © 2017 francois. All rights reserved.
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }



    @NSManaged public var creationDate: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var netebook: Notebook?

}
