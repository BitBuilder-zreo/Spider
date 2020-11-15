//
//  DataDrivenable.swift
//  App
//
//  Created by W&Z on 2020/11/12.
//

import Foundation
import WCDBSwift

/// 数据驱动
protocol DataDriver {

    /// 注册驱动
    /// - Parameter driven:
    func register<T>(tableName:String,entity:T.Type) where T : TableCodable

    /// 替换
    /// - Parameter tableName:表名
    func replace<T>(tableName:String,model:T) where T : TableCodable

    /// 插入
    /// - Parameters:
    ///   - tableName: 表名
    ///   - model: 模型
    func insert<T>(tableName:String,model:T) where T : TableCodable

    /// 更新
    /// - Parameters:
    ///   - tableName: 表名
    ///   - model: 模型
    func update<T>(tableName:String,model:T) where T : TableCodable

    /// 抓取全部
    /// - Parameter tableName: 表名
    func fetchAll<T>(tableName:String) -> [T] where T : TableCodable

}




