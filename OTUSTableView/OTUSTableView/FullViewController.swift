//
//  FullViewController.swift
//  OTUSTableView
//
//  Created by Kirill Kraynov on 08.11.2022.
//

import UIKit

class FullViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var pictureView: UIImageView!
    
    let model = Model()
    
    let helper = TableHelper()
    
    var fVCIndex: Int = 0
    
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = model.objectsArray[fVCIndex].title
 
        pictureView.image = UIImage(named: model.objectsArray[fVCIndex].pictureName)
    }


}
