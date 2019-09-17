//
//  OutputView.swift
//  RacingCar
//
//  Created by hoemoon on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
	func display(_ printable: Printable) {
		print(printable.record)
		print(printable.winnerMessage)
	}
}
