//
//  Block.swift
//  Blockchain Starter Project
//
//  Created by Sai Kambampati on 5/4/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class Block {
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
