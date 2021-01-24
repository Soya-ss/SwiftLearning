//
//  NextViewController.swift
//  Swift_Count
//
//  Created by 髙山颯椰 on 2021/01/20.
//

import UIKit

class NextViewController: UIViewController{

    @IBOutlet weak var answerText: UILabel!
    
    var enteredAnswer = String()
    var correctAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerText.text = enteredAnswer
    }
    


}
