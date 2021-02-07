//
//  RulesView.swift
//  Ring-of-Fire
//
//  Created by Tashnik on 2/5/21.
//

import SwiftUI

struct RulesView: View {
  var body: some View {
    ZStack {
      Color.cardTableGreen
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
      Text("A tall glass is put in the middle of the table, and surrounded by the cards facing down in a big circle (see picture above). This becomes the 'ring of fire'. Players take it in turns to draw a card from the deck, taking care not to break the circle - e.g. making sure every card touches at least one other that is left in the circle. If you break the circle, you have to drink. For every card you drawer, there is a specific rule")
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()
        .multilineTextAlignment(.center)
        
    }
  }
}

struct RulesView_Previews: PreviewProvider {
  static var previews: some View {
    RulesView()
  }
}
