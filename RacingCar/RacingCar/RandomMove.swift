//
//  RandomMove.swift
//  RacingCar
//
//  Created by temphee.Reid on 09/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RandomMove {
    static func canMoveForward(with number: Int) -> Bool {
        return (number >= 4) ? true : false
    }
}
