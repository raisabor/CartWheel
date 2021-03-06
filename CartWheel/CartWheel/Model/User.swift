//
//  User.swift
//  CartWheel
//
//  Created by Richmond Aisabor on 7/1/21.
//

import UIKit

struct User {
    
    var name: String?
   // var age: Int?
    var uid: String?
    //var gender: String?
    var email: String?
    var image: String?
    
    init(dictionary: [String: Any]) {
        
        // Initialize our user here
        self.name = dictionary["fullName"] as? String ?? ""
       // self.age = dictionary["age"] as? Int
        self.uid = dictionary["uid"] as? String
       // self.gender = dictionary["gender"] as? String
        self.email = dictionary["email"] as? String
        self.image = dictionary["imageUrl1"] as? String
        
        
        
        
    }

}
