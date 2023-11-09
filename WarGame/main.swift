//
//  warGame.swift
//  Chal2_all_tasks
//
//  Created by Anna Zvereva on 11/9/23.
//

import Foundation

    let cards: [Int] = [2,3,5,6]
    let countCards = cards.count/2
    
    func StartDivideDeck() -> [Int] {
        var newarray: [Int] = []
        for _ in 1...countCards {
            let CardDeckOne: Int = cards.randomElement() ?? 0
            newarray.append(CardDeckOne)
          
        }
        return newarray
      
    }
    
    func StartDivideDeck2() -> [Int] {
        var newarray2: [Int] = []
        for _ in 1...countCards {
            let CardDeckTwo: Int = cards.randomElement() ?? 0
            newarray2.append(CardDeckTwo)
        }
        return newarray2
    }
    
    var cardDeck1 = StartDivideDeck()
    print(cardDeck1)
    var cardDeck2 = StartDivideDeck2()
    print(cardDeck2)
    
    
    func round() {
        var onecardfromdeck1: Int
        var onecardfromdeck2: Int
        
//        var secondcardfromdeck1: Int
//        var secondcardfromdeck2: Int
//
//        var thearddcardfromdeck1: Int
//        var thearddcardfromdeck2: Int
//
//        var fourcardfromdeck1: Int
//        var fourcardfromdeck2: Int
        
            while cardDeck1.count != 0  ||  cardDeck2.count != 0 {
                
                onecardfromdeck1 = cardDeck1[0]
                onecardfromdeck2 = cardDeck2[0]
                
                if onecardfromdeck1 < onecardfromdeck2 {
                    cardDeck1.remove(at: 0)
                    cardDeck2.remove(at: 0)
                    cardDeck2.append(onecardfromdeck1)
                    cardDeck2.append(onecardfromdeck2)
                    
                }
                else if onecardfromdeck1 > onecardfromdeck2 {
                    cardDeck1.remove(at: 0)
                    cardDeck2.remove(at: 0)
                    cardDeck1.append(onecardfromdeck1)
                    cardDeck1.append(onecardfromdeck2)
                }
                else if onecardfromdeck1 == onecardfromdeck2 {
                    
                    
                }
                else {
                    print("Error")
                }
                    
                print(onecardfromdeck1)
                print(onecardfromdeck2)
                
                print(cardDeck1)
                print(cardDeck2)
            }
        }

    
    round()


