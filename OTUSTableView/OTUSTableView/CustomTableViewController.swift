//
//  ViewController.swift
//  OTUSTableView
//
//  Created by Kirill Kraynov on 07.11.2022.
//

import UIKit

class CustomTableViewController: TableHelper {
    
    @IBOutlet weak var customTableView: UITableView!
    
    let cell = CustomTableViewCell()
    
    let helper = TableHelper()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helper.indexValue = 0
                
        helper.dataSourceMethod(tableView: customTableView)
        helper.delegateMethod(tableView: customTableView)
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "fullPicSegue":
            prepareEditScreen(segue)
        default:
            break
        }
    }
    private func prepareEditScreen(_ segue: UIStoryboardSegue) {
        guard let destinationController = segue.destination as? FullViewController else {
            return
        }
        destinationController.fVCIndex = helper.indexValue
    }

    
}


