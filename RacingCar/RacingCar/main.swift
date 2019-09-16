//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
	var game = RacingGame()
	let printer = Printer()
	game.getNumberOfCars()
	game.run()
	printer.display(printable: game)
}

main()
