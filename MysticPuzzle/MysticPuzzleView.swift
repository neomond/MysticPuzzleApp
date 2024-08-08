//
//  ContentView.swift
//  MysticPuzzle
//
//  Created by Nazrin Atayeva on 08.08.24.
//

import SwiftUI


struct MysticPuzzleView: View {
    @StateObject var mysticPuzzleViewModel: MysticPuzzleViewModel = MysticPuzzleViewModel()
    
    let title = "Mystic Puzzle "
    let tileDimensions: CGFloat = 70
    
    var body: some View {
        
        ZStack{
            // Background color
            Color(
                .blue).opacity(0.3).ignoresSafeArea()
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                ZStack {
                    let tiles = mysticPuzzleViewModel.mysticPuzzleModel.tiles
                    
                    ForEach(tiles) { tile in
                        TileView(
                            tileNumber: tile.value,
                            tileDimensions: tileDimensions,
                            offset: tile.currentPoint)
                    }
                }
            }
        }
    }
}

#Preview {
    MysticPuzzleView()
}

struct TileView: View {
    let tileNumber: Int
    let tileDimensions: CGFloat
    let offset: CGPoint
    
    let somePadding: CGFloat = 3
    let digitResizeFactor: CGFloat = 0.65
    
    var body: some View {
        let direction = offset * tileDimensions
        
        let deltaX = direction.x + tileDimensions / 2
        let deltaY = direction.y - 3 + tileDimensions / 2
        
        
        Image("digit\(tileNumber)")
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(.red)
            .frame(
                width: tileDimensions*digitResizeFactor,
                height: tileDimensions*digitResizeFactor)
            .padding()
            .background(
                Color.gray
                    .frame(
                        width: tileDimensions - somePadding,
                        height: tileDimensions - somePadding)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            )
            .offset(x: deltaX, y: deltaY)
            .shadow(color: .black, radius: 1, x: 1, y: 1)
    }
}
