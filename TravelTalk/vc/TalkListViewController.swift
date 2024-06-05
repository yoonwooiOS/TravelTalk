//
//  TalkListViewController.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

class TalkListViewController: UIViewController {

    @IBOutlet var chatSearchBar: UISearchBar!
    
    @IBOutlet var tableView: UITableView!
    
    let list = mockChatList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()
    }
    
    func configureTableView() {
        
        navigationItem.title = "Travel Talk"
        
        tableView.rowHeight = 80
        tableView.dataSource = self
        tableView.delegate = self
        let talkListxib = UINib(nibName: "TalkListTableViewCell", bundle: nil)
        tableView.register(talkListxib, forCellReuseIdentifier: "TalkListTableViewCell")
        let groupTalkxib = UINib(nibName: GourpChattingListTableViewCell.identifier, bundle: nil)
        tableView.register(groupTalkxib, forCellReuseIdentifier:GourpChattingListTableViewCell.identifier )
    }
    
    

}

extension TalkListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // list = [ChatRoom].list
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = list[indexPath.row]
        
        if data.chatroomImage.count > 1{
           
            let cell = tableView.dequeueReusableCell(withIdentifier: GourpChattingListTableViewCell.identifier, for:  indexPath) as! GourpChattingListTableViewCell
            cell.configureGroupChatCell(data: list)
            
           
            
            
            return cell
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: TalkListTableViewCell.identifier,for: indexPath) as! TalkListTableViewCell
            
            cell.configureCell(data: data.chatList)
            cell.profileImage.image = UIImage(named: data.chatroomImage[0])
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(identifier: ChatRoomViewController.identifier) as! ChatRoomViewController
        vc.data = list[indexPath.row].chatList
        navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
    
    
    
    
    
    
}
