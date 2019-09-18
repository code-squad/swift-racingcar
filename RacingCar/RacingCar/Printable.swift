//
//  Printable.swift
//  RacingCar
//
//  Created by hoemoon on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol Printable {
//    var record: String { get }
    var records: [StateRepresentable] { get }
	var winnerMessage: String { get }
}

