//
//  NextViewController.swift
//  TableView_2
//
//  Created by 髙山颯椰 on 2021/01/25.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var textContent = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = textContent
    }
    

}
