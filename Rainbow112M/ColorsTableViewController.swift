//
//  ColorsTableViewController.swift
//  Rainbow112M
//
//  Created by John Pitts on 10/7/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    
    //var colors: [MyColor] = ["Red", "Green", "Yellow", "Blue"]   // Model:
    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                            MyColor(name: "Orange", color: .orange),
                            MyColor(name: "Yellow", color: .yellow),
                            MyColor(name: "Green", color: .green),
                             MyColor(name: "Cyan", color: .cyan),
                            MyColor(name: "Blue", color: .blue),
                            MyColor(name: "Purple", color: .purple)]
    
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
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].color
        
        

        return cell
    }


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowColorDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let detailVC = segue.destination as? ColorDetailViewController else { return } // if you allow user to use multi-touch to select more than one row, you could use .indexPathForSelectedRows instead
            // we don't use "as!" bc: what if someone goes in a changes the name of the ColorDetailViewController to something else?  Then you have a crash.  "as?" assumes we don't know if the viewController files exists or has the correct/same name as originally coded.
            let cellColor = colors[indexPath.row]
            detailVC.myColor = cellColor
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
