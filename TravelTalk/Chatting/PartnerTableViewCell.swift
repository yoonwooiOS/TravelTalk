//
//  PartnerTableViewCell.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

class PartnerTableViewCell: UITableViewCell {

    
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var chatTextView: UITextView!
    
    @IBOutlet var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure() {
        
    }
   
}
