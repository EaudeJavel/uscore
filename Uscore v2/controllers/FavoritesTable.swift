//
//  FavoritesTable.swift
//  uscoreJK
//
//  Created by Jan-Kasper Jakubowski on 27/11/2018.
//  Copyright © 2018 Jan-Kasper Jakubowski. All rights reserved.
//

import Foundation
import UIKit

// Declaration of the table structure
struct cellData {
    // Open or not
    var opened = Bool()
    // Top level cell, that you click on to expend the other -> sports titles
    var title = String()
    // Data inside the expended cells -> connect it to the database top have the teams
    var sectionData = [String]()
    
}

class FavoritesTable: UITableViewController {
    
    
    var tableViewData = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Information to put into the table view
        tableViewData = [cellData(opened: false, title: "Football", sectionData: ["cell1", "cell2", "cell3"]),
                         cellData(opened: false, title: "Football", sectionData: ["cell1", "cell2", "cell3"]),
                         cellData(opened: false, title: "Football", sectionData: ["cell1", "cell2", "cell3"])]
    }
    
    // Count how many sections there are in order to create the cells
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    
    // Count how many rows are displayed
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true {
            return tableViewData[section].sectionData.count + 1
        } else {
            // The section header
            return 1
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataIndex = indexPath.row - 1
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].title
            return cell
        } else {
            // Possibility of using another type of cell -> create it
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].sectionData[dataIndex]
            return cell
            
        }
    }
    
    // Allow to open the cells
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Don't close de section if you click on cell
        if indexPath.row == 0 {
            if tableViewData[indexPath.section].opened == true {
                tableViewData[indexPath.section].opened = false
                // Make sure it's an array of sections
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
            } else {
                tableViewData[indexPath.section].opened = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
            }
        }
    }
}

