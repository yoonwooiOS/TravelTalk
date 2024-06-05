//
//  TalkListTableViewCell.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

class TalkListTableViewCell: UITableViewCell {

    
    
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var chatUserNameLabel: UILabel!
    
    @IBOutlet var chattingLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

    func configureCell(data:[Chat] ) {
        
        let data = data[0]
        chatUserNameLabel.text = data.user.rawValue
        chattingLabel.text = data.message
        dateLabel.text = data.date
        
        
        
    }
    
    
}
