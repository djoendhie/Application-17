//
//  TableViewController.swift
//  QuizTempatRestoran
//
//  Created by SMK IDN MI on 10/13/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tableData = [String]()
    
     var indexofNumber = [String]()
    
    let transportitem = ["Coffee-Toffee", "El-S-Coffee", "D-Cost-Seafood", "Decorator", "Kubik Coffe", "Rimbun Coffe", "RM-Pauh-Piaman", "Simpang-Raya", "Skyline-Restaurant", "Weekend"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let indexNumber = "A B C D E F G H I J"
        indexofNumber = indexNumber.components(separatedBy: " ")

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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return transportitem.count
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        
        cell.textLabel?.text = transportitem[indexPath.row]
        
        let imageName = UIImage(named: transportitem[indexPath.row])
        cell.imageView?.image = imageName

        // Configure the cell...

        return cell
    }
    
    //menambahkan index number pada table view
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        return indexofNumber
        
        
    }
    
    override func tableView(_ tableView: UITableView,sectionForSectionIndexTitle: String, at index: Int) -> Int {
        
        // deklarasi var temp sebagai penyimpanan data dari indexof number
        let temp = indexofNumber as NSArray
        return temp.index(of: title)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
