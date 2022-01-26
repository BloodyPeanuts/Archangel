//
//  coreDataManager.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import Foundation
import CoreData
class coreDataManger{
    let persistentContainer: NSPersistentContainer
    static let shared: coreDataManger = coreDataManger()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "dataModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to init CD \(error)")
            }
        }
    }
}
