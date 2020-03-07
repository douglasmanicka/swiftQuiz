//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Douglas Manicka on 06/03/20.
//  Copyright © 2020 Douglas Manicka. All rights reserved.
//

import Foundation

class Quiz {
    
    let questions: String
    let options: [String]
    private let correctedAnswers: String
    
    init(questions: String, options: [String], correctedAnswers: String) {
        self.questions = questions
        self.options =  options
        self.correctedAnswers =  correctedAnswers
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswers
        
    }

}
