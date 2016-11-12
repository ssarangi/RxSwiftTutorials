//
//  RootViewController.swift
//  RxSwiftTutorials
//
//  Created by Satyajit Sarangi on 11/12/16.
//  Copyright © 2016 Satyajit Sarangi. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    
    let section = ["pizza", "deep dish pizza", "calzone"]
    
    let items = [
                    [
                        ("Margarita", "VTasty"),
                        ("BBQ Chicken", "Good"),
                        ("Pepperoni", "HHHH")
                    ],
                    [
                        ("sausage","VNice"),
                        ("meat lovers", "GGGGG"),
                        ("veggie lovers", "GHHFS"),
                        ("sausage", "wrsgs")
                    ],
                    [   ("chicken pesto", "gfdkjgdfs"),
                        ("prawns", "fjdskgasf"),
                        ("mushrooms", "dfhgjkd")
                    ]
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return self.section.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = self.items[indexPath.section][indexPath.row].0
        cell.detailTextLabel?.text = self.items[indexPath.section][indexPath.row].1
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
