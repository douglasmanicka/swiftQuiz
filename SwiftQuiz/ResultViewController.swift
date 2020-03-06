//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Douglas Manicka on 06/03/20.
//  Copyright © 2020 Douglas Manicka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet var labelAnswered: UIView!
    @IBOutlet weak var labelCorrect: UILabel!
    @IBOutlet weak var labelWrong: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func close(_ sender: Any) {
    }
    

}
