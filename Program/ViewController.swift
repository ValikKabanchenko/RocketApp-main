//
//  ViewController.swift
//  Program
//
//  Created by Валик Кабанченко on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {

    var dataArray : [Double] = []
    
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var labelList: UILabel!
    @IBOutlet weak var labelTotal: UILabel!
    @IBOutlet weak var rocketView: UIImageView!
    @IBOutlet weak var labelHeader: UILabel!
    
    @IBAction func Push(_ sender: Any) {
     
       
    if dataArray != [] {
        labelHeader.text = "🤑 Flew to spend money 🤑"
    }
    if textField.text! != "" {
            let d = Double(textField.text!)
            dataArray.append(d!)
    }
        textField.text! = ""
        printData()
}
    func printData(){
        var list = ""
        var summ : Double = 0
    
        for item in dataArray {
            summ = summ + item
            list = String(item) + "💲" + list
        }
    if  dataArray == []{
    
        labelList.text = "No spending 😶‍🌫️"
    
    }else if dataArray == [0]{
        
        labelList.text = "Can spend a little more 🤏"
        
    }else if dataArray != []{
        
        labelList.text = list
        
        }
      labelTotal.text = "Total summ 👜: \(summ) " + "💲"
}
   override func viewDidLoad() {
        super.viewDidLoad()
      
        printData()
    }
}

