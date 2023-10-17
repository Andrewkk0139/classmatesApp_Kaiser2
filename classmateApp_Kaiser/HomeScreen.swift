//
//  HomeScreen.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/12/23.
//

import UIKit

class HomeScreen: UIViewController {
    var stuArray: [Student] = []


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var s1 = Student(name: "Swifty Seaver", age: 84, money: 23.14,funny: funnyScale.HILARIOUS)
        var s2 = Student(name: "Leisure Liam", age: 17, money: 643802.92,funny: funnyScale.HAHA)
        var s3 = Student(name: "Miles Trials", age: 23, money: 5703.20,funny: funnyScale.meh)
        stuArray.append(s1)
        stuArray.append(s2)
        stuArray.append(s3)
    }
    
    
    
    @IBAction func viewMatesAction(_ sender: Any) {
        performSegue(withIdentifier: "toMates", sender: self)
    }
    
    @IBAction func addMatesAction(_ sender: Any) {
        performSegue(withIdentifier: "toAdd", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toMates"){
            let nvc = segue.destination as! ViewController
            nvc.delegate = self
        } else {
            let nvc = segue.destination as! addStudentVC
            nvc.delegate = self
        }
    }
    
    

}
