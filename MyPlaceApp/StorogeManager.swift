//
//  StorogeManager.swift
//  MyPlaceApp
//
//  Created by Вадим Гамзаев on 29/06/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import RealmSwift

let realm = try! Realm()
class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
