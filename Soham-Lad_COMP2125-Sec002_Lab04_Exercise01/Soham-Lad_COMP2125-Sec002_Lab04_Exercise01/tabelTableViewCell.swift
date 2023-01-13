//
//  tabelTableViewCell.swift
//  Soham-Lad_COMP2125-Sec002_Lab04_Exercise01
//
//  Created by user213345 on 8/4/22.
//

import UIKit

class tabelTableViewCell: UITableViewCell {

    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var movieImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
