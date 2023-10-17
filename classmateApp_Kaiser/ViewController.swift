//
//  ViewController.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/11/23.
//

//protocol addingStudentProto {
//    func addStudent(_ stuName: String, _ stuAge: Int, _ stuMoney: Double)
//}

import UIKit

class ViewController: UIViewController {

    var stuIndex = 0
    //stu lable outlets
    @IBOutlet weak var ageOutlet: UILabel!
    @IBOutlet weak var moneyOutlet: UILabel!
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var funnyOutlet: UILabel!
    
    //
    // buttons
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var backOutlet: UIButton!
    //
    var delegate: HomeScreen!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        

        
        nameOutlet.text = "Name: \(delegate.stuArray[0].name)"
        ageOutlet.text = "Age: \(String((delegate.stuArray[0].age)))"
        moneyOutlet.text = "Money: \(String((delegate.stuArray[0].money)))"
        funnyOutlet.text = "Funny Scale: \(delegate.stuArray[0].funny)"
    }
    @IBAction func nextActioon(_ sender: Any) {
        // changing lables and shifting right in the array
        if stuIndex <= delegate.stuArray.count - 2{
            stuIndex+=1
            print("stuIndex is \(stuIndex)")
            nameOutlet.text = "Name: \(delegate.stuArray[stuIndex].name)"
            ageOutlet.text = "Age: \(String(delegate.stuArray[stuIndex].age))"
            moneyOutlet.text = "Money: \(String(delegate.stuArray[stuIndex].money))"
        }
        
    }
    
    @IBAction func backAction(_ sender: Any) {
        // changing lables and shifting left in the array
        if stuIndex >= 1{
            stuIndex-=1
            nameOutlet.text = "Name: \(delegate.stuArray[stuIndex].name)"
            ageOutlet.text = "Age: \(String(delegate.stuArray[stuIndex].age))"
            moneyOutlet.text = "Money \(String(delegate.stuArray[stuIndex].money))"
        }
    }
    
    @IBAction func sortAction(_ sender: Any) {
        delegate.stuArray.sort (by: {$0.name < $1.name})
        stuIndex = 0
        nameOutlet.text = "Name: \(delegate.stuArray[stuIndex].name)"
        ageOutlet.text = "Age: \(String(delegate.stuArray[stuIndex].age))"
        moneyOutlet.text = "Money \(String(delegate.stuArray[stuIndex].money))"
    }
    
    

    
   
    
    


}

// if segue.indentifer == "segueName" {
// let nvc = segue.destination as! *viewControllerName*
//} else then add your additonal segues

