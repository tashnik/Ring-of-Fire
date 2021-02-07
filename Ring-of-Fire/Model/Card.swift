//
//  Card.swift
//  Ring-of-Fire
//
//  Created by Tashnik on 2/6/21.
//

import Foundation
import SwiftUI

struct Card {
  var rule: String
  var cardImages: [UIImage]
  var imageCount: Int {
    cardImages.count
  }
}

class CardData: ObservableObject {
  var cards: [Card]
  var cardCount: Int {
    cards.count
  }
  
  init() {
    self.cards = [Card(rule: Rules.rule2, cardImages: [UIImage(named: "Hearts_2")!, UIImage(named: "Spades_2")!, UIImage(named: "Clubs_2")!, UIImage(named: "Diamonds_2")!]),
                  
                Card(rule: Rules.rule3, cardImages: [UIImage(named: "Hearts_3")!, UIImage(named: "Spades_3")!, UIImage(named: "Clubs_3")!, UIImage(named: "Diamonds_3")!]),
                Card(rule: Rules.rule4, cardImages: [UIImage(named: "Hearts_4")!, UIImage(named: "Spades_4")!, UIImage(named: "Clubs_4")!, UIImage(named: "Diamonds_4")!]),
                Card(rule: Rules.rule5, cardImages: [UIImage(named: "Hearts_5")!, UIImage(named: "Spades_5")!, UIImage(named: "Clubs_5")!, UIImage(named: "Diamonds_5")!]),
                Card(rule: Rules.rule6, cardImages: [UIImage(named: "Hearts_6")!, UIImage(named: "Spades_6")!, UIImage(named: "Clubs_6")!, UIImage(named: "Diamonds_6")!]),
                Card(rule: Rules.rule7, cardImages: [UIImage(named: "Hearts_7")!, UIImage(named: "Spades_7")!, UIImage(named: "Clubs_7")!, UIImage(named: "Diamonds_7")!]),
                Card(rule: Rules.rule8, cardImages: [UIImage(named: "Hearts_8")!, UIImage(named: "Spades_8")!, UIImage(named: "Clubs_8")!, UIImage(named: "Diamonds_8")!]),
                Card(rule: Rules.rule9, cardImages: [UIImage(named: "Hearts_9")!, UIImage(named: "Spades_9")!, UIImage(named: "Clubs_9")!, UIImage(named: "Diamonds_9")!]),
                Card(rule: Rules.rule10, cardImages: [UIImage(named: "Hearts_10")!, UIImage(named: "Spades_10")!, UIImage(named: "Clubs_10")!, UIImage(named: "Diamonds_10")!]),
                Card(rule: Rules.ruleJack, cardImages: [UIImage(named: "Hearts_J")!, UIImage(named: "Spades_J")!, UIImage(named: "Clubs_J")!, UIImage(named: "Diamonds_J")!]),
                Card(rule: Rules.ruleAce, cardImages: [UIImage(named: "Hearts_A")!, UIImage(named: "Spades_A")!, UIImage(named: "Clubs_A")!, UIImage(named: "Diamonds_A")!]),
                Card(rule: Rules.ruleKing, cardImages: [UIImage(named: "Hearts_K")!, UIImage(named: "Spades_K")!, UIImage(named: "Clubs_K")!, UIImage(named: "Diamonds_K")!]),
                Card(rule: Rules.ruleQueen, cardImages: [UIImage(named: "Hearts_Q")!, UIImage(named: "Spades_Q")!, UIImage(named: "Clubs_Q")!, UIImage(named: "Diamonds_Q")!])
    ]
  }
}
