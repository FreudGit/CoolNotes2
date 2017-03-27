//
//  Note+CoreDataClass.swift
//  CoolNotes
//
//  Created by François Hébert on 2017-03-27.
//  Copyright © 2017 francois. All rights reserved.
//

import Foundation
import CoreData


public class Note: NSManagedObject {

    convenience init(text:String = "New Note", context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Note", in: context) {
            self.init(entity: ent, insertInto: context)
            self.text = text
            self.creationDate = NSDate()
        }else{
            fatalError("fh:Unable to find entuty nam e")
        }

    }

}
