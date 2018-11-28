//
//  ArticlesController.swift
//  Uscore v2
//
//  Created by Paul Lamy on 28/11/2561 BE.
//  Copyright © 2561 Hetic. All rights reserved.
//

import Foundation
import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleArticle: UILabel!
    @IBOutlet weak var descriptionArticle: UILabel!
    @IBOutlet weak var imageArticle: UIImageView!
    
    override func awakeFromNib() {
        
        
        
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

