//
//  Blockchain.swift
//  Blockchain Starter Project
//
//  Created by Sai Kambampati on 5/4/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class Blockchain {
    var chain = [Block]()
    func createGenesisBlock(data:String) {
        let genesisBlock = Block()
        genesisBlock.hash = genesisBlock.generateHash()
        genesisBlock.data = data
        genesisBlock.previousHash = "0000"
        genesisBlock.index = 0
        chain.append(genesisBlock)
    }
    
    func createBlock(data:String) {
        let newBlock = Block()
        newBlock.hash = newBlock.generateHash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count-1].hash
        newBlock.index = chain.count
        chain.append(newBlock)
    }
}
