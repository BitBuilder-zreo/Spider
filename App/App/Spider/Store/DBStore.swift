//
//  DBStore.swift
//  App
//
//  Created by W&Z on 2020/11/12.
//

import Foundation
import WCDBSwift

fileprivate let DBPath =  NSSearchPathForDirectoriesInDomains(
    .documentDirectory,
    .userDomainMask,
    true).last! + "/Spider.db"

class DBStore {

    let database : Database

    init() {
        database = Database(withPath: DBPath)
    }

}

extension DBStore : DataDriver {

    func register<T>(tableName: String, entity: T.Type) where T : TableCodable {

        try? database.create(table: tableName, of: entity)
    }

    func replace<T>(tableName: String, model : T ) where T : TableCodable {

        try? database.insertOrReplace(objects: [model], intoTable: tableName)
    }

    func insert<T>(tableName: String, model: T) where T : TableCodable {

        try? database.insert(objects: model, intoTable: tableName)
    }

    func update<T>(tableName: String, model: T) where T : TableCodable {

        try? database.update(table: tableName, with: model)
    }

    func fetchAll<T>(tableName: String) -> [T] where T : TableCodable {

        return []
    }

}


