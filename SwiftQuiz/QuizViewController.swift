//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Douglas Manicka on 06/03/20.
//  Copyright © 2020 Douglas Manicka. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var viewTimer: UIView!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet var buttonAnswers: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        quizManager.clearTotals()
    
        viewTimer.frame.size.width =  view.frame.size.width
        UIView.animate(withDuration: 10, delay: 0, options: .curveLinear, animations: {
            self.viewTimer.frame.size.width =  0
        }) { (sucess) in
            self.showResults()
        }
        
        getNewQuiz()
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        labelQuestion.text =  quizManager.question
        for i in 0..<quizManager.options.count{
            let option = quizManager.options[i]
            let button = buttonAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults()  {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
       if let resultViewController = segue.destination as? ResultViewController {
            resultViewController.totalAnswers =  quizManager.totalAnswers
            resultViewController.totalCorrectAnswers = quizManager.totalCorrectedAnswers
           
       }
        
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = buttonAnswers.index(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
       
    }
    

}
