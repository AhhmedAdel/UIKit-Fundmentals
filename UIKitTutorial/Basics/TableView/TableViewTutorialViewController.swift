//
//  TableViewTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 19/06/2024.
//

import UIKit

class TableViewTutorialViewController: UITableViewController {
    
    private var constructors = [
    "Mercedes",
    "Ferrari",
    "Aston Martin",
    "Red Bull",
    "William Racing"
    ]
    
    private var drivers = [
    "Lewis Hamilton",
    "George Russel",
    "Charles Leclerc",
    "Carlos Sainz",
    "Fernando Alonso",
    "Lance Stroll",
    "Max Verstappen",
    "Checo Perez"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")

        
    }

    // MARK: - Table view data source

    
    // How many sections?
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    // How many times should we run?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return constructors.count
        case 1: return drivers.count
        default: return 0
        }
    }

    
    // How to render each cell?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        
        switch indexPath.section {
        case 0:
            content.text = constructors[indexPath.row]
        case 1:
            content.text = drivers[indexPath.row]
            
        default: break
        }
        
        cell.contentConfiguration = content


        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Constructors"
        case 1: return "Drivers"
        default: return nil
        }
    }
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
