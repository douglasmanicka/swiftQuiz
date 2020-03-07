//
//  QuizManager.swift
//  SwiftQuiz
//
//  Created by Douglas Manicka on 06/03/20.
//  Copyright © 2020 Douglas Manicka. All rights reserved.
//

import Foundation

class QuizManager{
    
    private let quizes: [(question: String, correctAnswer: String, options: [String])] = [
        (question: "Which of these is a string?", correctAnswer: "\"Hello world\"",
         options: ["20", "\"Hello world\"", "Hello world", "'Hello world'"]),
        
        (question: "What is the result of the expression \"1\" + \"1\" ?", correctAnswer: "\"11\"",
         options: ["11", "\"2\"", "\"11\"", "\"1 1\""]),
        
        (question: "Which of these symbols is used to \"escape\" special characters ?", correctAnswer: "\\",
         options: ["/", "\\", "!", "ESC"]),
        
        (question: "What is the correct syntax for declaring a function?", correctAnswer: "func myFunction() {}",
         options: ["func = myFunction() {}", "let myFunction = func() {}", "let func = myFunction() {}", "func myFunction() {}"]),
        
        (question:
            """
               func printSomething() {
                  print("I love functions")
               }
               printSomething()
            """, correctAnswer: "I love functions",
         options: ["Nothing", "printSomething()", "I love functions", "Error"]),
        
        (question: "When we don't declare a function's return type, what is the standard return?", correctAnswer: "Void",
         options: ["Void", "Int", "String", "nil"]),
        
        (question: "What is the correct syntax for declaring a parameter?", correctAnswer: "func myFunc(message: String) {}",
         options: ["func myFunc(String message) {}", "func myFunc(let message = String) {}", "func myFunc(message String) {}", "func myFunc(message: String) {}"]),
        
        (question: "What is the type of a String variable that can accept nil?", correctAnswer: "String?",
         options: ["String", "String?", "Int", "Void"]),
        
        (question: "When we want to declare a constant, which reserved word should we use?", correctAnswer: "let",
         options: ["var", "const", "let", "CONST"]),
        
        (question: "What is a dictionary", correctAnswer: "It is an unordered collection with a key and value",
         options: ["It is a collection that does not accept repeated objects", "It is an ordered collection with key and value", "It is an unordered collection with key and value", "It is a collection that allows values ​​of different types"] ),
        
        (question: "What is the name of the special type in Swift that is used to declare  blocks or anonymous functions?", correctAnswer: "Closure",
         options: ["Lambda", "Block", "Closure", "Protocol"]),
        
        (question: "What is an enum?", correctAnswer: "User defined type for a group of related values",
         options: ["It's a set of Strings", "It's a special type of String", "It's a unary operator of type prefix", "User defined type for a group of related values"]),
        
        (question: "What can't an extension do?", correctAnswer: "Add stored properties",
         options: ["Add new features", "Define new builders", "Add stored properties", "Add computed properties"]),
        
        (question: "When we inherit from a class and want to call its constructor, we use ...", correctAnswer: "super.init",
         options: ["main.init", "super.init", "self.init", "super"]),
        ]
    
    
    
    private var quiz: Quiz!
    private var _totalAnswers = 0
    private var _totalCorrectAnswers = 0
    
    var  question: String{
        return quiz.questions
    }
    var options: [String]{
        return quiz.options
    }
    
    var totalAnswers: Int{
        return _totalAnswers
    }
    
    var totalCorrectedAnswers: Int{
        return _totalCorrectAnswers
    }
    
    func clearTotals()  {
        _totalAnswers = 0
        _totalCorrectAnswers = 0
    }
    
    
    
    func refreshQuiz(){
       let randonIndex =  Int(arc4random_uniform(UInt32(quizes.count)))
       let  quizData = quizes[randonIndex]
       quiz = Quiz(questions: quizData.question, options: quizData.options, correctedAnswers: quizData.correctAnswer)
    }
    
    func validateAnswer(index: Int){
        _totalAnswers += 1
        if quiz.validateOption(index){
            _totalCorrectAnswers += 1
        }
    }
  
}
