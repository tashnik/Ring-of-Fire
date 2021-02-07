//
//  GameTabView.swift
//  Ring-of-Fire
//
//  Created by Tashnik on 2/5/21.
//

import SwiftUI

struct GameTabView: View {
  var body: some View {
    TabView {
      GameView()
        .tabItem {
          Image(systemName: "flame")
          Text("Game")
        }
      
      RulesView()
        .tabItem {
          Image(systemName: "book")
          Text("Rules")
        }
    }
    .accentColor(Color.cardTableGreen)
  }
}

struct GameTabView_Previews: PreviewProvider {
  static var previews: some View {
    GameTabView()
  }
}
