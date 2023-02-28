//
//  MyTableViewCell.swift
//  trial002
//
//  Created by Mikael Giannes M. Bernardino on 2/23/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var restoLogo: UIImageView!
    
    @IBOutlet weak var restoName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
