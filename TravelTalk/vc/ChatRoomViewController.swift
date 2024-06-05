//
//  ChatRoomViewController.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

class ChatRoomViewController: UIViewController {
    
    

    @IBOutlet var tableView: UITableView!
    
    var data: [Chat]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        configureTabelView()
        
    }
    
    func configureTabelView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let myChatXib = UINib(nibName: MyChatTableViewCell.identifier, bundle: nil)
        tableView.register(myChatXib, forCellReuseIdentifier: MyChatTableViewCell.identifier)
        
        let partnerChatxib = UINib(nibName: PartnerTableViewCell.identifier, bundle: nil)
        tableView.register(partnerChatxib, forCellReuseIdentifier: PartnerTableViewCell.identifier)
    }
}

extension ChatRoomViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = data else { return 0}
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyChatTableViewCell.identifier, for: indexPath)
        guard let data = data else { return MyChatTableViewCell()  }
     
        
            
        
        
        
        return cell
        }
        
        
        
        
        
        
            
        
       
        
    }
    
    
    

