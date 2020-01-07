//
//  Quote.swift
//  SeinfieldQuotableTrivia
//
//  Created by Jaheed Haynes on 1/6/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import Foundation

class Quote {

    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(quoteText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        
        question = quoteText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
