//
//  SightListTableViewCell.swift
//  5040assignment1
//
//  Created by Lindsay Chang on 2019/8/27.
//  Copyright © 2019 Lindsay Chang. All rights reserved.
//

import UIKit

class SightListTableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    

  
    
    
    @IBOutlet weak var sightImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
