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
    var selectedMate: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    
    }
    //button actions
    @IBAction func addAction(_ sender: Any) {
        performSegue(withIdentifier: "tableToAdd", sender: self)
    }
    
    @IBAction func deleteAction(_ sender: Any) {
        delegate.stuArray.remove(at: selectedMate)
        tableViewOutlet.reloadData()
    }
    
    @IBAction func viewAction(_ sender: Any) {
        performSegue(withIdentifier: "toFancyView", sender: self)
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
    
    // gives you the indexPath of the selected student. Func runs everytime a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMate = indexPath.row
        
        
       // print("selected stu: \(selectedMate.name)")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
