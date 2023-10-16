//
//  HomeScreen.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/12/23.
//

import UIKit

class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func viewMatesAction(_ sender: Any) {
        performSegue(withIdentifier: "toMates", sender: self)
    }
    
    @IBAction func addMatesAction(_ sender: Any) {
        performSegue(withIdentifier: "toAdd", sender: self)
    }
    
    

}
