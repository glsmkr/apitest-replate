//
//  APIController.swift
//  Replate
//
//  Created by Julian A. Fordyce on 8/16/19.
//  Copyright © 2019 Glas Labs. All rights reserved.
//

import Foundation
import UIKit


enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum NetworkError: Error {
    case noAuth
    case badAuth
    case otherError
    case badData
    case noDecode
}


class APIController {
    
    private let baseURL = URL(string: "https://bw-replate.herokuapp.com/api/auth/business/register")!
    var bearer: Bearer?
}
