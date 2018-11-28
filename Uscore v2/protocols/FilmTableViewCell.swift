//
//  FilmTableViewCell.swift
//  Uscore v2
//
//  Created by Paul Lamy on 23/11/2561 BE.
//  Copyright © 2561 Hetic. All rights reserved.
//

import Foundation
import UIKit


class FilmTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var filmLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    
}
