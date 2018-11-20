//
//  HTableViewCell.swift
//  ProyectoFinalPrueba
//
//  Created by Usuario invitado on 11/20/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class HTableViewCell: UITableViewCell {
    @IBOutlet weak var Hmovement: UILabel!
    @IBOutlet weak var Htag: UILabel!
    @IBOutlet weak var Hdate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
