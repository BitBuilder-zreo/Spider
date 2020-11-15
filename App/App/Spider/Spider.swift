//
//  Spider.swift
//  App
//
//  Created by W&Z on 2020/11/12.
//

import Foundation

class Spider {

    fileprivate static let instace = Spider()

    fileprivate let dataDriver:DataDriver = DBStore()

    fileprivate let cobwebs : Cobwebs = Cobwebs()

    private init() { }

}


extension Spider {

    class func configuration(){

    }




}


