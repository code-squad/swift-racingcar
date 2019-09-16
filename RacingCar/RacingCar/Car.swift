//
//  Car.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Car {
    private(set) var position : Int = 0
    
    init() {
    }
    
    fileprivate func incrementPosition() {
        position = position + 1
    }
    
    func moveForward(byRandom : RandomNumber) {
        if byRandom.isGoing() {
            incrementPosition()
        }
    }
}
