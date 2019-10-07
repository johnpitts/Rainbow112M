//
//  ColorsTableViewController.swift
//  Rainbow112M
//
//  Created by John Pitts on 10/7/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    
    var colors: [String] = ["Red", "Green", "Yellow", "Blue"]   // Model:
    
    // viewDidLoad is already defined in the parent class, but if we want to override it we must implement super.viewDidLoad().  This means if you don't have anything here you could actually delete this section entirely....
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Rainbow"      // title = nav item title
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        //cell.textLabel?.text = "Red"     you just get Red in every cell
        //cell.textLabel?.text = "Cell \(indexPath.row)"   you get cell count
        //cell.textLabel?.text = "Cell \(indexPath.row + 1)" // you get cell count skipping cell 0
        // let aColor = colors[indexPath.row]
        cell.textLabel?.text = colors[indexPath.row]
        

        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
