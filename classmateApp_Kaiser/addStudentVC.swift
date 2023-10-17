//
//  addStudentVC.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/13/23.
//

import UIKit

class addStudentVC: UIViewController {

    @IBOutlet weak var addNameOutlet: UITextField!
    @IBOutlet weak var addAgeOutlet: UITextField!
    @IBOutlet weak var addMoneyOutlet: UITextField!
    @IBOutlet weak var addFunnyOutlet: UITextField!

    var delegate: HomeScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addAction(_ sender: Any) {
        let name1 = addNameOutlet.text ?? "None"
        let age1 = Int(addAgeOutlet.text!) ?? 0
        let money1 = Double(addMoneyOutlet.text!) ?? 0.0
        let funny1 = funnyScale(addFunnyOutlet.text!) ?? funnyScale.HAHA
        delegate.stuArray.append(Student(name: name1, age: age1, money: money1, funny: funny1))
    }
    
}
