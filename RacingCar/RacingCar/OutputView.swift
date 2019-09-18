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
        for record in printable.records {
            guard record.racerName.count > 0 else {
                print("")
                continue
            }
            print("\(record.racerName) : \(record.positionState)")
        }
		print(printable.winnerMessage)
	}
}
