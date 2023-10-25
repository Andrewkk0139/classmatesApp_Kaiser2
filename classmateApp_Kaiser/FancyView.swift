//
//  FancyView.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/23/23.
//

import UIKit

class FancyView: UIViewController {

    var delegate: TableViewVC!
    var fancyName: String!
    var fancyAge: Int!
    var fancyMoney: Double!
    //outlets
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var ageOutlet: UILabel!
    @IBOutlet weak var moneyOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameOutlet.text = "Name: \(fancyName!)"
        ageOutlet.text = "Age: \(String(fancyAge))"
        moneyOutlet.text = "Money: \(String(fancyMoney))"
    }
    

   
}
