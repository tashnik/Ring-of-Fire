//
//  ContentView.swift
//  Ring-of-Fire
//
//  Created by Tashnik on 2/5/21.
//

import SwiftUI


struct GameView: View {
  
  @StateObject var cardData = CardData()
  
  @State var cardNumber = 0
  @State var cardImageNumber = 0
  @State var count = 1
  @State var noMoreCards = false
  
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [Color.cardTableGreen, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
      VStack {
        Ellipse()
          .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          .foregroundColor(.orange).opacity(0.5)
          .shadow(color: .yellow, radius: 12)
          .padding(.top, 20)
        
        Spacer()
      }
      
      
      VStack {
        
        Text("Ring of Fire")
          .font(.custom("Copperplate-Bold", size: 33))
          .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          .foregroundColor(.red)
          .padding(.top, 30)
          .padding()
          .shadow(radius: 12)
        
        Text(noMoreCards ? "Game is over" : cardData.cards[cardNumber].rule)
          .font(.title2)
          .font(.body)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .frame(height: 250)
          .padding(.horizontal, 30)
          .padding(.top, 10)
     
        Button {
          count += 1
          
          if !noMoreCards {
            cardData.cards[cardNumber].cardImages.remove(at: cardImageNumber)
            
            if cardData.cards[cardNumber].imageCount == 0 {
              cardData.cards.remove(at: cardNumber)
              
              print("removed \(cardData.cards[cardNumber].cardImages[cardImageNumber])")
            } 
          }
          
          
          if cardData.cardCount == 0 {
            noMoreCards = true
          }
          
          cardNumber = Int.random(in: 0..<cardData.cardCount)
          cardImageNumber = Int.random(in: 0..<cardData.cards[cardNumber].imageCount)
          print("\(cardData.cards[cardNumber].cardImages[cardImageNumber]) \(count)")
          
          
          
        } label: {
          Image(uiImage: noMoreCards ? UIImage(named: "Hearts_Joker")! : cardData.cards[cardNumber].cardImages[cardImageNumber])
            .resizable()
            .scaledToFit()
            .frame(width: 450, height: 350)
            .padding(.bottom, 55)
        }
       
        Spacer()
      }
    }
    .onAppear {
      
      cardNumber = Int.random(in: 0..<cardData.cardCount)
      cardImageNumber = Int.random(in: 0..<cardData.cards[cardNumber].imageCount)
      print("\(cardData.cards[cardNumber].cardImages[cardImageNumber]) \(count)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    GameView()
  }
}
