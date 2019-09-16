//
//  Car.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Car {
    let name : String
    private var position : Int = 0
    
    init(with name: String) {
        self.name = name
    }
    
    fileprivate func incrementPosition() {
        position = position + 1
    }
    
    func iterate(_ transform: (Int)->(Void)) {
        for index in 0..<position {
            transform(index)
        }
    }
    
    func moveForward(by random : RandomNumber) {
        if random.isGoing() {
            incrementPosition()
        }
    }
}
