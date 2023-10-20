//
//  tableViewVC.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/20/23.
//

import UIKit

class TableViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var delegate: HomeScreen!
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    
    }
    
    // number of cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.stuArray.count
    }
    
    // pops. each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(delegate.stuArray[indexPath.row].name)"
        cell.detailTextLabel?.text = "Age: \(delegate.stuArray[indexPath.row].age)"
        return cell
    }
    
    

    

}
