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
		let racerList = InputView.getRacerList()
		let numberOfGames = InputView.getNumberOfGames()
		try game.setup(
			numberOfGames: numberOfGames,
			racerList: racerList
		)
		try game.run()
		printer.display(printable: game)
	} catch let error {
		print(error)
	}
}

main()
