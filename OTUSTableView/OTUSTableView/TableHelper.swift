//
//  TableHelper.swift
//  OTUSTableView
//
//  Created by Kirill Kraynov on 08.11.2022.
//

import Foundation
import UIKit


class TableHelper: UIViewController {
    
    let model = Model()
    
    var indexValue: Int = 0
        
    func dataSourceMethod(tableView: UITableView) {
        tableView.dataSource = self
    }
    
    func delegateMethod(tableView: UITableView) {
        tableView.delegate = self
    }
}

extension TableHelper: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.objectsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        cell.cellLabel.text = model.objectsArray[indexPath.row].title
        cell.cellImageView.image = UIImage(named: model.objectsArray[indexPath.row].pictureName)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        indexValue = indexPath.row
        
        return indexPath
    }
}
