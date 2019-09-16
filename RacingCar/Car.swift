//
//  Car.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/10.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

public class Car {
    private let name: String
    public var position: Int {
        didSet {
            self.position += oldValue
        }
    }
    public var carName: String {
        get {
            return name
        }
    }
    public init(name: String) {
        self.name = name
        self.position = 0
    }
}
