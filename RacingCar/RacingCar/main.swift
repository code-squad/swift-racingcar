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
		let outputView = OutputView()
		let racerList = InputView.getRacerList()
		let numberOfGames = InputView.getNumberOfGames()
        var game = try RacingGame(
            numberOfGames: numberOfGames,
            racerList: racerList
        )
		try game.run()
		outputView.display(game)
	} catch let error {
		print(error)
	}
}

main()
