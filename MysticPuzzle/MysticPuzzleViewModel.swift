//
//  MysticPuzzleViewModel.swift
//  MysticPuzzle
//
//  Created by Nazrin Atayeva on 08.08.24.
//

import SwiftUI


class MysticPuzzleViewModel: ObservableObject {
    @Published var mysticPuzzleModel: MysticPuzzleModel = MysticPuzzleModel(tiles: [], n: 0)
    
    init(){
        self.createInitialItems()
        self.shuffle()
    }
    
    func createInitialItems(){
        var tiles: [TileModel] = []
        tiles.append(TileModel(value: 1, currentPoint: LEFT * 2, winningPoint: LEFT * 2))
        tiles.append(TileModel(value: 2, currentPoint: LEFT * 1, winningPoint: LEFT * 1))
        tiles.append(TileModel(value: 3, currentPoint: .zero, winningPoint: .zero))
        
        let n = 4
        self.mysticPuzzleModel = MysticPuzzleModel(tiles: tiles, n: n)
    }
    
    func shuffle(){
        
    }
}
