//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
	do {
		var game = RacingGame()
		let printer = Printer()
		let numberOfCars = game.getNumberOfCars()
		try game.setup(with: numberOfCars)
		try game.run()
		printer.display(printable: game)
	} catch let error {
		print(error)
	}
}

main()
