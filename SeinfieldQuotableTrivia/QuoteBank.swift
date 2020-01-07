//
//  QuoteBank.swift
//  SeinfieldQuotableTrivia
//
//  Created by Jaheed Haynes on 1/6/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import Foundation

class QuoteBank{
    var list = [Quote]()
    
    init() {
        list.append(Quote(quoteText: "You look like you live with your mother!", choiceA: "Jerry", choiceB: "Elaine", choiceC: "George", choiceD: "Kramer", answer: 1))
        
        list.append(Quote(quoteText: "If you know what happened in the Mets game don't tell me, I taped it. Hello?", choiceA: "Jerry", choiceB: "Elaine", choiceC: "George", choiceD: "Kramer", answer: 1))
        
        list.append(Quote(quoteText: "You done with this?", choiceA: "Jerry", choiceB: "Elaine", choiceC: "George", choiceD: "Kramer", answer: 4))
        
        list.append(Quote(quoteText: "You made a man cry? I've never made a man cry. I even kicked a guy in the groin once and he didn't cry.", choiceA: "Jerry", choiceB: "Elaine", choiceC: "George", choiceD: "Kramer", answer: 2))
        
        list.append(Quote(quoteText: "Please, don't insult me -- no one's a bigger idiot than me.", choiceA: "Jerry" , choiceB: "Elaine" , choiceC: "George" , choiceD: "Kramer", answer: 4))
        
        list.append(Quote(quoteText: "People don't turn down money, it's what separates us from the animals!", choiceA: "Jerry" , choiceB: "Elaine", choiceC: "George" , choiceD: "Kramer", answer: 1))
    }
}
