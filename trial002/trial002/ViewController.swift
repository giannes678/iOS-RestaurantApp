//
//  ViewController.swift
//  trial002
//
//  Created by Mikael Giannes M. Bernardino on 2/23/23.
//

import UIKit

class ViewController: UIViewController {
    var imageName: String?
    var restoName: String?

    @IBOutlet weak var restoLabel: UILabel!
    @IBOutlet weak var restoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restoImageView.image = UIImage(named: imageName ?? "mcdoPic")
        restoLabel.text = restoName ?? "MCDO"
    }
    
}
