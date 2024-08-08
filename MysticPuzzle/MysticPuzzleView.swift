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
                    Text("Tiles")
                    Image("digit0")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(.red)
                        .frame(width: tileDimensions, height: tileDimensions)
                }
            }
        }
    }
}

#Preview {
    MysticPuzzleView()
}
