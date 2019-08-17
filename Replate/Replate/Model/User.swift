//
//  User.swift
//  Replate
//
//  Created by Julian A. Fordyce on 8/16/19.
//  Copyright © 2019 Glas Labs. All rights reserved.
//

import Foundation

struct User: Codable {
    let username: String
    let password: String
    let organizationName: String
    let address: String
    let email: String
    let phone: Int
    
    init(username: String, password: String, organizationName: String = "Test", address: String = "123 Candy Lane", email: String = "test@gmail.com", phone: Int = 1234567890) {
        self.username = username
        self.password = password
        self.address = address
        self.organizationName = organizationName
        self.email = email
        self.phone = phone
    }
    
}
