//
//  UserData.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/11/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation

class User : NSObject, NSCoding {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func encode(with aCoder: NSCoder) {
         aCoder.encode(name, forKey: "nickName")
     }
    
     convenience required init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: "name") as? String else { return nil }
        self.init(name: name)
     }
}
