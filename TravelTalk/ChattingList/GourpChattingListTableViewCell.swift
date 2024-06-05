//
//  GourpChattingListTableViewCell.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

class GourpChattingListTableViewCell: UITableViewCell {
    @IBOutlet var firstProfileImage: UIImageView!
    
    @IBOutlet var secondProfileImage: UIImageView!
    
    @IBOutlet var thirdProfileImage: UIImageView!
    
    @IBOutlet var fourthProfileImage: UIImageView!
    
    @IBOutlet var groupchatTitleLabel: UILabel!
    
    @IBOutlet var lastchatLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func configureGroupChatCell(data: [ChatRoom]) {
        
        let data = data[0]
        
        lastchatLabel.text = "\(data.chatList[0].message)"
        groupchatTitleLabel.text = "\(data.chatroomName)"
        dateLabel.text =  data.chatList[0].date
        
        firstProfileImage.image = UIImage(named: data.chatroomImage[0])
        secondProfileImage.image =  UIImage(named: data.chatroomImage[1])
        thirdProfileImage.image =  UIImage(named: data.chatroomImage[2])
        fourthProfileImage.image =  UIImage(named: data.chatroomImage[3])
        
        firstProfileImage.contentMode = .scaleToFill
        secondProfileImage.contentMode = .scaleToFill
        thirdProfileImage.contentMode = .scaleToFill
        fourthProfileImage.contentMode = .scaleToFill
        
        
    }
    
}
