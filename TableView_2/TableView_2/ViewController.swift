//
//  ViewController.swift
//  TableView_2
//
//  Created by 髙山颯椰 on 2021/01/25.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tableView_2: UITableView!
    
    var stringArray = [String]()
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView_2.delegate = self
        tableView_2.dataSource = self
        textField.delegate = self
    }
    
    // セルのセクション数を決める
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    //　セルの数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return stringArray.count
    }
    
    // セルを構築するときに呼ばれる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.selectionStyle = .none
        cell.textLabel?.text = stringArray[indexPath.row]
        
        return cell
    }
    
    // セルの高さを決める
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return view.frame.size.height/6
    }
   
    // セルがタップされたときに呼び出される
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        text = stringArray[indexPath.row]
        
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        nextVC.textContent = text
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    // キーボードでEnterを押した時の処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        
        return true
    }
    
    // goボタン押下
    @IBAction func tap(_ sender: Any) {
        
        if  !textField.text!.isEmpty {
            stringArray.append(textField.text!)
        }
        textField.text = ""
        tableView_2.reloadData()
    }
    
}

