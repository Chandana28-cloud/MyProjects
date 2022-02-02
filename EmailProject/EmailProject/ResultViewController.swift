//
//  ResultViewController.swift
//  EmailProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 01/02/22.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDataSource {
    
    let tableViewData = Array(repeating: "Email", count: 5)
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(WelcomeScreen.text!)
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")

    }
    
    @IBAction func Inputs(_ sender: Any) {
        print("Inputs Pressed")
    }

    @IBAction func Starred(_ sender: Any) {
        print("Starred Pressed")
    }
    
    @IBAction func Important(_ sender: Any) {
        print("Important Pressed")
    }
    
    @IBAction func Sent(_ sender: Any) {
        print("Sent Pressed")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
            cell.textLabel?.text = self.tableViewData[indexPath.row]
            return cell
    }
    
    

}

