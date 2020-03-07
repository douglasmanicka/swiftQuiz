//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Douglas Manicka on 06/03/20.
//  Copyright © 2020 Douglas Manicka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var labelAnswered: UILabel!
    @IBOutlet weak var labelCorrect: UILabel!
    @IBOutlet weak var labelWrong: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelAnswered.text = "Answered Questions: \(totalAnswers)"
        labelCorrect.text = "Correct Questions: \(totalCorrectAnswers)"
        labelWrong.text = "Wrong Questions: \(totalAnswers  - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100 / totalAnswers
        labelScore.text = "\(score)%"
        
    }
    

    @IBAction func close(_ sender: Any) {
      dismiss(animated: true, completion: nil)    
    }
    

}
