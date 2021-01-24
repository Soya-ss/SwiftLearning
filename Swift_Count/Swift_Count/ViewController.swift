//
//  ViewController.swift
//  Swift_Count
//
//  Created by 髙山颯椰 on 2021/01/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    var answer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

    @IBAction func tap(_ sender: Any) {
        answer = textField.text!
        
        let nextVC :NextViewController = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        nextVC.enteredAnswer = answer
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}

